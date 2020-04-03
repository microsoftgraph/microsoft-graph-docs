---
title: "Set up change notifications that include resource data (preview)"
description: "Microsoft Graph uses a webhook mechanism to deliver change notifications to clients. Notifications can include resource properties."
author: "baywet"
ms.prod: "non-product-specific"
localization_priority: Priority
---

# Set up change notifications that include resource data (preview)

Microsoft Graph allows apps to subscribe to change notifications for resources via [webhooks](webhooks.md). You can now set up subscriptions to include the changed resource data (such as the content of a Microsoft Teams chat message) in notifications. Your app can then run its business logic without having to make a separate API call to fetch the changed resource. As a result, the app performs better by making fewer API calls, which is beneficial in large scale scenarios.

Including resource data as part of notifications requires you to implement the following additional logic to satisfy data access and security requirements: 

- [Handle](#subscription-life-cycle-notifications) special subscription _life cycle_ notifications to maintain an uninterrupted flow of data. Microsoft Graph sends life cycle notifications from time to time to require an app to re-authorize, to make sure access issues have not unexpectedly cropped up for including resource data in notifications.
- [Validate](#validating-the-authenticity-of-notifications) the authenticity of notifications as having originated from Microsoft Graph.
- [Provide](#decrypting-resource-data-from-change-notifications) a public encryption key and use a private key to decrypt resource data received through notifications.

## Resource data in notification payload

In general, this type of change notifications include the following resource data in the payload:

- ID and type of the changed resource instance, returned in the **resourceData** property.
- All the property values of that resource instance, encrypted as specified in the subscription, returned in the **encryptedContent** property.
- Or, depending on the resource, specific properties returned in the **resourceData** property. To get only specific properties, specify them as part of the **resource** URL in the subscription, using a `$select` parameter.  


## Supported resources

Currently, the Microsoft Teams [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta) (preview) resource supports change notifications that include resource data. Specifically, you can set up a subscription that applies to one of the following:

- New or changed messages in a specific Teams channel: `/teams/{id}/channels/{id}/messages`
- New or changed messages in a specific Teams chat: `/chats/{id}/messages`

The **chatMessage** resource supports including all the properties of a changed instance in a notification. It does not support returning only selective properties of the instance. 

This article walks through an example of subscribing to change notifications of messages in a Teams channel, with each notification including the full resource data of the changed **chatMessage** instance.

## Creating a subscription

To have resource data included in change notifications, you **must** specify the following properties, in addition to those that are usually specified when [creating a subscription](webhooks.md#creating-a-subscription):

- **includeResourceData** which should be set to `true` to explicitly request resource data.
- **lifecycleNotificationUrl** which is an endpoint where [life cycle notifications](#subscription-life-cycle-notifications) are delivered. This can be the same or different as **notificationUrl**.
- **encryptionCertificate** which contains only the public key that Microsoft Graph uses to encrypt resource data. Keep the corresponding private key to [decrypt the content](#decrypting-resource-data-from-change-notifications).
- **encryptionCertificateId** which is your own identifier for the certificate. Use this ID to match in each notification, which certificate to use for decryption.

Keep the following in mind:

- Use the same host name for both notification endpoints (**notificationUrl** and **lifecycleNotificationUrl**).
- Validate both notification endpoints as described [here](webhooks.md#notification-endpoint-validation). If you choose to use the same URL for both endpoints, you will receive and respond to two validation requests.
- You cannot update (`PATCH`) an existing subscription to add the **lifecycleNotificationUrl** property. You should remove the existing subscription, and create a new subscription to include the **lifecycleNotificationUrl** property.

### Subscription request example

The following example subscribes to two types of notifications: 

- Resource changes - channel messages being created or updated in Microsoft Teams
- Subscription life cycle events which can affect the flow of change notifications. See more details about life cycle notifications in the [next section](#subscription-life-cycle-notifications).

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json
{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "lifecycleNotificationUrl": "https://webhook.azurewebsites.net/api/lifecycleNotifications",
  "resource": "/teams/{id}/channels/{id}/messages",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

### Subscription response
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "lifecycleNotificationUrl": "https://webhook.azurewebsites.net/api/lifecycleNotifications",
  "resource": "/teams/{id}/channels/{id}/messages",
  "includeResourceData": true,
  "encryptionCertificateId": "{custom ID}",
  "encryptionCertificateThumbprint": "{thumbprint from the certificate}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secret client state}"
}
```

## Subscription life cycle notifications

Certain events can interfere with normal notification flow in an existing subscription. Subscription _life cycle notifications_ inform you actions to take in order to maintain an uninterrupted flow. Unlike a resource change notification which informs a change to a resource instance, a life cycle notification is about the subscription itself, and its current state in the life cycle. 

Life cycle notifications are delivered to the **lifecycleNotificationUrl**. 

In this section:

- [Life cycle notification that challenges subscription authorization](#life-cycle-notification-that-challenges-subscription-authorization)
- [Authorization challenge flow](#authorization-challenge-flow)
- [Example authorization challenge](#example-authorization-challenge)
- [Responding to an authorization challenge](#responding-to-an-authorization-challenge)
- [Tips](#tips)
- [Future-proof your code to handle other types of life cycle notifications](#future-proof-your-code-to-handle-other-types-of-life-cycle-notifications)

### Life cycle notification that challenges subscription authorization

One type of life cycle notifications challenges the authorized state of an active subscription. When the **lifecycleEvent** property in a notification indicates `reauthorizationRequired`, you must re-authorize the subscription to maintain the data flow.

When you create a long-lived subscription (for example, one that lasts for 3 days), resource data notifications flows to the location indicated in **notificationUrl**. However, at any point in time, Microsoft Graph may require that you re-authorize the subscription to prove that you still have access to resource data, in case the conditions of access have changed since the subscription was created. The following are examples of changes that affect your access to data:

- A tenant administrator may revoke your app's permissions to read a resource.
- In an interactive scenario, the user who provides the authentication token to your app may be subject to dynamic policies based on various factors, such as their location, device state, or risk assesment. For example, if the user changes their physical location, the user may no longer be allowed to access the data, and your app will not be able to re-authorize the subscription. For more information on dynamic policies that control access, see [Azure AD conditional access policies](https://docs.microsoft.com/azure/active-directory/conditional-access/overview). 

### Authorization challenge flow

The flow of an authorization challenge for an active, non-expired subscription looks as follows:

1. Microsoft Graph requires a subscription to be re-authorized
    
    The reasons for this may vary from resource to resource, and may change over time. Regardless of the cause of the re-authorization event, you will need to respond to it.

2. Microsoft Graph sends an authorization challenge notification to the **lifecycleNotificationUrl**

    Note that the flow of resource notifications may continue for a while, giving you extra time to respond. However, eventually resource notification delivery will pause, until you take the required action.

3. Respond to this notification in one of two ways:
    1. Re-authorize the subscription. This does not extend the expiry date of the subscription.
    2. Renew the subscription. This both re-authorizes and extends the expiry date.

    Note: Both actions require you to present a valid authentication token, similar to [creating a new subscription](webhooks.md#creating-a-subscription) or [renewing a subscription before its expiry](webhooks.md#renewing-a-subscription).

4. If you successfully re-authorize or renew the subscription, resource notifications continue. Otherwise, resource notifications remain paused.
    
### Example authorization challenge

Below is an example life cycle notification that requests re-authorizing a subscription. 

Note the following:

- The `"lifecycleEvent": "reauthorizationRequired"` field identifies this notification as an authorization challenge.
- The notification does not contain any information about a specific resource, because it is not related to a resource change, but to the subscription state change.
- Similar to resource notifications, you can batch life cycle notifications together (in the **value** collection), each with a possibly different **lifecycleEvent** value. Process each notification in the batch accordingly.

```json
{
  "value": [
    {
      "lifecycleEvent": "reauthorizationRequired",
      "subscriptionId": "e3898f08-5cd0-4a6a-80fc-6addbfb73b7b",
      "subscriptionExpirationDateTime": "2019-09-18T00:52:45.9696658+00:00",
      "clientState": "{secret client state}",
      "tenantId": "84bd8158-6d4d-4958-8b9f-9d6445542f95"
    }
  ]
}
```

### Responding to an authorization challenge

Take the following steps to process an authorization challenge life cycle notification. The first two steps of acknowledging and validating the life cycle notification is similar to [responding to a resource change notification](webhooks.md#processing-the-notification).

1. Acknowledge the receipt of the notification, by responding to the POST call with `HTTP 202 Accepted`.
2. Validate the authenticity of the notification. Further details [below](#validating-the-authenticity-of-notifications).
3. Ensure the app has a valid access token to take the next step. 

    If you are using one of the [authentication libraries](https://docs.microsoft.com/azure/active-directory/develop/reference-v2-libraries), the library handles this for you by either reusing a valid cached token, or obtaining a new token from prompting the user to log in again with a new password. However, obtaining a new token may fail, since the conditions of access may have changed, and the user may no longer be allowed access to the resource data.

4. Call either of the following two APIs. If the API call succeeds, the resource notification flow resumes.

    - Call the `/reauthorize` action to re-authorize the subscription without extending its expiration date:
        ```http
        POST  https://graph.microsoft.com/beta/subscriptions/{id}/reauthorize
        Content-type: application/json
        ```
    - Perform a regular renew action to re-authorize and renew the subscription at the same time:
        ```http
        PATCH https://graph.microsoft.com/beta/subscriptions/{id}
        Content-Type: application/json

        {
           "expirationDateTime": "2019-09-21T11:00:00.0000000Z"
        }
        ```

      Renewing may fail, because the authorization checks performed by the system may deny the app or the user access to the resource. It may be necessary for the app to obtain a new access token from the user to successfully re-authorize a subscription. 
      
      You may retry these actions later, at any time, and succeed if the conditions of access change. Any notifications about resource changes that happen between the time the life cycle notification was sent, and the time when the app eventually re-creates the subscription successfully, would be lost. In such cases, the app should separately fetch those changes.

### Tips

Keep the following in mind:

1. Authorization challenges do not replace the need to renew a resource change subscription before it expires. 

    While you can choose to renew a subscription when you receive an authorization challenge, Microsoft Graph may not challenge all of your subscriptions. For example, a subscription that does not have any activity and has no resource notifications pending delivery may not signal any re-authorization challenges to your app. Make sure to [renew subscriptions](webhooks.md#renewing-a-subscription) before they expire.

2. The frequency of authorization challenges is subject to change.

    Do not make assumptions about the frequency of authorization challenges. These notifications tell you when to take actions, saving you from having to track which subscriptions require re-authorization. Be ready to handle authorization challenges anywhere from once a few minutes for every subscription, to rarely for only some of your subscriptions.

### Future-proof your code to handle other types of life cycle notifications

Expect subscription life cycle notifications to be posted to the same endpoint specified by **lifecycleNotificationUrl**. They differentiate by the **lifecycleEvent** property and may contain slightly different schema and properties to serve the scenarios they address.

Implement your code in anticipation of new types of life cycle notifications:

1. Use the **lifecycleEvent** property to identify the type of notification so to determine the appropriate response. For example, look for the `"lifecycleEvent": "reauthorizationRequired"` property to identify a specific event, and handle it.

1. Log any life cycle events that your app does not recognize to gain awareness.

1. Subscribe to the [Microsoft Graph Developer Blog](https://developer.microsoft.com/graph/blogs/) to watch for announcements of life cycle notifications for new scenarios.

1. Look up related documentation for new life cycle notifications and implement support for them as appropriate.

## Validating the authenticity of notifications

Apps often execute business logic based on resource data included in notifications. Having first verified the authenticity of each notification is important. Otherwise, a third party could spoof your app with false notifications, make it execute its business logic incorrectly, and lead to a security incident.

For basic notifications which do not contain resource data, simply validate them based on the **clientState** value as described [here](webhooks.md#processing-the-notification). This is acceptable, as you can make subsequent trusted Microsoft Graph calls to get access to resource data, and therefore the impact of any spoofing attempts is limited. 

For notifications that deliver resource data, perform a more thorough validation before processing the data.

In this section:

- [Validation tokens in the notification](#validation-tokens-in-the-notification)
- [How to validate](#how-to-validate)
- [Example JWT token](#example-jwt-token)

### Validation tokens in the notification

A notification with resource data contains an additional property, **validationTokens**, which contains an array of JWT tokens generated by Microsoft Graph. Microsoft Graph generates a single token for each distinct app and tenant pair for whom there is an item in the **value** array. Keep in mind that notifications may contain a mix of items for various apps and tenants that subscribed using the same **notificationUrl**.

In the following example, the notification contains two items for the same app, and for two different tenants, therefore the **validationTokens** array contains two tokens that need to be validated.

```json
{
	"value": [
		  {
			"subscriptionId": "76619225-ff6b-4489-96ca-4ef547e78b22",
      "tenantId": "84bd8158-6d4d-4958-8b9f-9d6445542f95",
			"changeType": "created",
			...
		  },
      {
			"subscriptionId": "e990d58f-fd93-40af-acf7-a7c907c5d8ea",
      "tenantId": "46d9e3bd-6309-4177-a016-b256a411e30f",
			"changeType": "created",
			...
			}
	],
	"validationTokens": [
		"eyJ0eXAiOiJKV1QiLCJhb...",
    "cGlkYWNyIjoiMiIsImlkc..."
	]
}
```
### How to validate

If you are new to token validation, refer to this [blog article](http://www.cloudidentity.com/blog/2014/03/03/principles-of-token-validation/) for a useful overview. Use an SDK, such as Microsoft's [System.IdentityModel.Tokens.Jwt](https://www.nuget.org/packages/System.IdentityModel.Tokens.Jwt/) library for .NET, or a third party library for a different platform.

Be mindful of the following: 

- Make sure to always send an `HTTP 202 Accepted` status code as part of the response to the notification. 
- Do that before validating the notification (for example, if you store notifications in queues for later processing) or after (if you process them on the fly), even if validation failed.
- Accepting a notification prevents unnecessary delivery retries and it also prevents any potential rogue actors from finding out if they passed or failed validation. You can always choose to ignore an invalid notification after you have accepted it.

In particular, perform validation on every JWT token in the **validationTokens** collection. If any tokens fail, consider the notification suspicious and investigate further. 

Use the following steps to validate tokens and apps that generate tokens:

1. Validate that the token has not expired.

2. Validate the token has not been tampered with and was issued by the expected authority, Microsoft Azure Active Directory:

    - Obtain the signing keys from the common configuration endpoint: `https://login.microsoftonline.com/common/.well-known/openid-configuration`. This configuration is cached by your app for a period of time. Be aware that the configuration is updated frequently as signing keys are rotated daily.
    - Verify the signature of the JWT token using those keys.

    Do not accept tokens issued by any other authority.

3. Validate that the token was issued for your app that is subscribing to change notifications.

    The following steps are part of standard validation logic in JWT token libraries and can typically be executed as a single function call. 
    - Validate the "audience" in the token matches your app ID.
    - If you have more than one app receiving notifications, make sure to check for multiple IDs.


4. **Critical**: Validate that the app that generated the token represents the Microsoft Graph change notification publisher. 

    - Check that the **appid** property in the token matches the expected value of `0bf30f3b-4a52-48df-9a82-234910c4a086`.
    - This ensures that notifications are not sent by a different app that is not Microsoft Graph.


### Example JWT token

Here is an example of the properties included in the JWT token that are needed for validation:

```json
{
  // aud is your app's id 
  "aud": "8e460676-ae3f-4b1e-8790-ee0fb5d6148f",                           
  "iss": "https://sts.windows.net/84bd8158-6d4d-4958-8b9f-9d6445542f95/",
  "iat": 1565046813,
  "nbf": 1565046813,
  // Expiration date 
  "exp": 1565075913,                                                        
  "aio": "42FgYKhZ+uOZrHa7p+7tfruauq1HAA==",
  // appid represents the notification publisher and must always be the same value of 0bf30f3b-4a52-48df-9a82-234910c4a086 
  "appid": "0bf30f3b-4a52-48df-9a82-234910c4a086",                          
  "appidacr": "2",
  "idp": "https://sts.windows.net/84bd8158-6d4d-4958-8b9f-9d6445542f95/",
  "tid": "84bd8158-6d4d-4958-8b9f-9d6445542f95",
  "uti": "-KoJHevhgEGnN4kwuixpAA",
  "ver": "1.0"
}
```

### Example: Verifying validation tokens

```csharp
// add Microsoft.IdentityModel.Protocols.OpenIdConnect and System.IdentityModel.Tokens.Jwt nuget packages to your project
public async Task<bool> ValidateToken(string token, string tenantId, IEnumerable<string> appIds)
{
    var configurationManager = new ConfigurationManager<OpenIdConnectConfiguration>("https://login.microsoftonline.com/common/.well-known/openid-configuration", new OpenIdConnectConfigurationRetriever());
    var openIdConfig = await configurationManager.GetConfigurationAsync();
    var handler = new JwtSecurityTokenHandler();
    try
    {
	handler.ValidateToken(token, new TokenValidationParameters
	{
	    ValidateIssuer = true,
	    ValidateAudience = true,
	    ValidateIssuerSigningKey = true,
	    ValidateLifetime = true,
	    ValidIssuer = $"https://sts.windows.net/{tenantId}/",
	    ValidAudiences = appIds,
	    IssuerSigningKeys = openIdConfig.SigningKeys
	}, out _);
	return true;
    }
    catch (Exception ex)
    {
	Trace.TraceError($"{ex.Message}:{ex.StackTrace}");
	return false;
    }
}
```
```java
private boolean IsValidationTokenValid(String[] appIds, String tenantId, String serializedToken) {
	try {
	    JwkKeyResolver jwksResolver = new JwkKeyResolver();
	    Jws<Claims> token = Jwts.parserBuilder()
		.setSigningKeyResolver(jwksResolver)
		.build()
		.parseClaimsJws(serializedToken);
	    Claims body = token.getBody();
	    String audience = body.getAudience();
	    boolean isAudienceValid = false;
	    for(String appId : appIds) {
		isAudienceValid = isAudienceValid || appId.equals(audience);
	    }
	    boolean isTenantValid = body.getIssuer().endsWith(tenantId + "/");
	    return isAudienceValid  && isTenantValid; //nbf,exp and signature are already validated by library
	} catch (Exception e) {
	    LOGGER.error("could not validate token");
	    LOGGER.error(e.getMessage());
	    return false;
	}
}
```
For the Java sample to work, you will also need to implement the `JwkKeyResolver`.  
```java
package com.example.restservice;

import com.auth0.jwk.JwkProvider;
import com.auth0.jwk.UrlJwkProvider;
import com.auth0.jwk.Jwk;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwsHeader;
import io.jsonwebtoken.SigningKeyResolverAdapter;
import java.security.Key;
import java.net.URI;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class JwkKeyResolver extends SigningKeyResolverAdapter {
    private JwkProvider keyStore;
    private final Logger LOGGER = LoggerFactory.getLogger(this.getClass());
    public JwkKeyResolver() throws java.net.URISyntaxException, java.net.MalformedURLException {
        this.keyStore = new UrlJwkProvider((new URI("https://login.microsoftonline.com/common/discovery/keys").toURL()));
    }
    @Override
    public Key resolveSigningKey(JwsHeader jwsHeader, Claims claims) {
        try {
            String keyId = jwsHeader.getKeyId();
            Jwk pub = keyStore.get(keyId);
            return pub.getPublicKey();
        } catch (Exception e) {
            LOGGER.error(e.getMessage());
            return null;
        }
    }
}
```

## Decrypting resource data from change notifications

The **resourceData** property of a notification includes only the basic ID and type information of a resource instance. The **encryptedData** property contains the full resource data, encrypted by Microsoft Graph using the public key provided in the subscription. The property also contains values required for verification and decryption. This is done to increase the security of customer data accessed via notifications. It is your responsibility to secure the private key to ensure that customer data cannot be decrypted by a third party, even if they manage to intercept the original notifications.

In this section:

- [Managing encryption keys](#managing-encryption-keys)
- [Decrypting resource data](#decrypting-resource-data)
- [Example: decrypting a notification with encrypted resource data](#example-decrypting-a-notification-with-encrypted-resource-data)

### Managing encryption keys

1. Obtain a certificate with a pair of asymmetric keys.

    - You can self-sign the certificate, since Microsoft Graph does not verify the certificate issuer, and uses the public key for only encryption. 
    - Use [Azure Key Vault](https://docs.microsoft.com/azure/key-vault/key-vault-whatis) as the solution to create, rotate, and securely manage certificates. Make sure the keys satisfy the following criteria:

        - The key must be of type `RSA`
        - The key size must be between 2048 and 4096 bits

2. Export the certificate in base64-encoded X.509 format, and **include only the public key**. 

3. When creating a subscription:

    - Provide the certificate in the **encryptionCertificate** property, using the base64-encoded content that the certificate was exported in.
    - Provide your own identifier in the **encryptionCertificateId** property. 
  
        This identifier allows you to match your certificates to the notifications you receive, and to retrieve certificates from your certificate store. The identifier can be up to 128 characters.

4. Manage the private key securely, so that your notification processing code can access the private key to decrypt resource data.

#### Rotating keys

To minimize the risk of a private key becoming compromised, periodically change your asymmetric keys. Follow these steps to introduce a new pair of keys:

1. Obtain a new certificate with a new pair of asymmetric keys. Use it for all new subscriptions being created.

2. Update existing subscriptions with the new certificate key.

    - Do this as part of regular subscription renewal. 
    - Or, enumerate all subscriptions and provide the key. Use the [PATCH operation on the subscription](/graph/api/subscription-update?view=graph-rest-1.0) and update the **encryptionCertificate** and **encryptionCertificateId** properties.

3. Keep in mind the following:
    - For a period of time, the old certificate may still be used for encryption. Your app must have access to both old and new certificates to be able to decrypt content.
    - Use the **encryptionCertificateId** property in each notification to identify the correct key to use.
    - Discard of the old certificate only when you have seen no recent notifications referencing it.

### Decrypting resource data

To optimize performance, Microsoft Graph uses a two-step encryption process:
  - It generates a single use symmetric key, and uses it to encrypt resource data.
  - It uses the public asymmetric key (that you provided when subscribing) to encrypt the symmetric key and includes it in each notification of that subscription.

Always assume that the symmetric key is different for each item in the notification.

To decrypt resource data, your app should perform the reverse steps, using the properties under **encryptedContent** in each notification:

1. Use the **encryptionCertificateId** property to identify the certificate to use.

2. Initialize an RSA cryptographic component (such as the .NET [RSACryptoServiceProvider](https://docs.microsoft.com/dotnet/api/system.security.cryptography.rsacryptoserviceprovider.decrypt?view=netframework-4.8)) with the private key.

3. Decrypt the symmetric key delivered in the **dataKey** property of each item in the notification.

    Use Optimal Asymmetric Encryption Padding (OAEP) for the decryption algorithm.

4. Use the symmetric key to calculate the HMAC-SHA256 signature of the value in **data**.
  
    Compare it to the value in **dataSignature**. If they do not match, assume the payload has been tampered with and do not decrypt it.

5. Use the symmetric key with an Advanced Encryption Standard (AES) (such as the .NET [AesCryptoServiceProvider](https://docs.microsoft.com/dotnet/api/system.security.cryptography.aescryptoserviceprovider?view=netframework-4.8)) to decrypt the content in **data**.

    - Use the following decryption parameters for the AES algorithm:

        - Padding: PKCS7
        - Cipher mode: CBC
    - Set the "initialization vector" by copying the first 16 bytes of the symmetric key used for decryption.

6. The decrypted value is a JSON string that represents the resource instance in the notification.


### Example: decrypting a notification with encrypted resource data

The following is an example notification that includes encrypted property values of a **chatMessage** instance in a channel message. The instance is specified by the `@odata.id` value.

```json
{
	"value": [
		{
			"subscriptionId": "76222963-cc7b-42d2-882d-8aaa69cb2ba3",
			"changeType": "created",
			// Other properties typical in a resource change notification
			"resource": "teams('d29828b8-c04d-4e2a-b2f6-07da6982f0f0')/channels('19:f127a8c55ad949d1a238464d22f0f99e@thread.skype')/messages('1565045424600')/replies('1565047490246')",
			"resourceData": {
				"id": "1565293727947",
				"@odata.type": "#Microsoft.Graph.ChatMessage",
				"@odata.id": "teams('88cbc8fc-164b-44f0-b6a6-b59b4a1559d3')/channels('19:8d9da062ec7647d4bb1976126e788b47@thread.tacv2')/messages('1565293727947')/replies('1565293727947')"
			},
			"encryptedContent": {
				"data": "{encrypted data that produces a full resource}",
        "dataSignature": "<HMAC-SHA256 hash>",
				"dataKey": "{encrypted symmetric key from Microsoft Graph}",
				"encryptionCertificateId": "MySelfSignedCert/DDC9651A-D7BC-4D74-86BC-A8923584B0AB",
				"encryptionCertificateThumbprint": "07293748CC064953A3052FB978C735FB89E61C3D"
			}
		}
	],
	"validationTokens": [
		"eyJ0eXAiOiJKV1QiLCJhbGciOiJSU..."
	]
}
```

This section contains some useful code snippets that use C# and .NET for each stage of decryption.

#### Decrypt the symmetric key

```csharp
// Initialize with the private key that matches the encryptionCertificateId.
RSACryptoServiceProvider rsaProvider = ...;        
byte[] encryptedSymmetricKey = Convert.FromBase64String(<value from dataKey property>);

// Decrypt using OAEP padding.
byte[] decryptedSymmetricKey = rsaProvider.Decrypt(encryptedSymmetricKey, fOAEP: true);

// Can now use decryptedSymmetricKey with the AES algorithm.
```
```Java
String storename = ""; //name/path of the jks store
String storepass = ""; //password used to open the jks store
String alias = ""; //alias of the certificate when store in the jks store, should be passed as encryptionCertificateId when subscribing and retrieved from the notification
KeyStore ks = KeyStore.getInstance("JKS");
ks.load(new FileInputStream(storename), storepass.toCharArray());
Key asymmetricKey = ks.getKey(alias, storepass.toCharArray());
byte[] encryptedSymetricKey = Base64.decodeBase64("<value from dataKey property>");
Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA1AndMGF1Padding");
cipher.init(Cipher.DECRYPT_MODE, asymmetricKey);
byte[] decryptedSymmetricKey = cipher.doFinal(encryptedSymetricKey);
// Can now use decryptedSymmetricKey with the AES algorithm.
```

#### Compare data signature using HMAC-SHA256

```csharp
byte[] decryptedSymmetricKey = <the aes key decrypted in the previous step>;
byte[] encryptedPayload = <the value from the data property, still encrypted>;
byte[] expectedSignature = <the value from the dataSignature property>;
byte[] actualSignature;

using (HMACSHA256 hmac = new HMACSHA256(decryptedSymmetricKey))
{
    actualSignature = hmac.ComputeHash(encryptedPayload);
}
if (actualSignature.SequenceEqual(expectedSignature))
{
    // Continue with decryption of the encryptedPayload.
}
else
{
    // Do not attempt to decrypt encryptedPayload. Assume notification payload has been tampered with and investigate.
}
```
```Java
byte[] decryptedSymmetricKey = "<the aes key decrypted in the previous step>";
byte[] decodedEncryptedData = Base64.decodeBase64("data property from encryptedContent object");
Mac mac = Mac.getInstance("HMACSHA256");
SecretKey skey = new SecretKeySpec(decryptedSymmetricKey, "HMACSHA256");
mac.init(skey);
byte[] hashedData = mac.doFinal(decodedEncryptedData);
String encodedHashedData = new String(Base64.encodeBase64(hashedData));
if (comparisonSignature.equals(encodedHashedData);)
{
    // Continue with decryption of the encryptedPayload.
}
else
{
    // Do not attempt to decrypt encryptedPayload. Assume notification payload has been tampered with and investigate.
}
```

#### Decrypt the resource data content

```csharp
AesCryptoServiceProvider aesProvider = new AesCryptoServiceProvider();
aesProvider.Key = decryptedSymmetricKey;
aesProvider.Padding = PaddingMode.PKCS7;
aesProvider.Mode = CipherMode.CBC;

// Obtain the intialization vector from the symmetric key itself.
int vectorSize = 16;
byte[] iv = new byte[vectorSize];
Array.Copy(decryptedSymmetricKey, iv, vectorSize);
aesProvider.IV = iv;

byte[] encryptedPayload = Convert.FromBase64String(<value from dataKey property>);

string decryptedResourceData;
// Decrypt the resource data content.
using (var decryptor = aesProvider.CreateDecryptor())
{
  using (MemoryStream msDecrypt = new MemoryStream(encryptedPayload))
  {
      using (CryptoStream csDecrypt = new CryptoStream(msDecrypt, decryptor, CryptoStreamMode.Read))
      {
          using (StreamReader srDecrypt = new StreamReader(csDecrypt))
          {
              decryptedResourceData = srDecrypt.ReadToEnd();
          }
      }
  }
}

// decryptedResourceData now contains a JSON string that represents the resource.
```
```Java
SecretKey skey = new SecretKeySpec(decryptedSymmetricKey, "AES");
IvParameterSpec ivspec = new IvParameterSpec(Arrays.copyOf(decryptedSymmetricKey, 16));
Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
cipher.init(Cipher.DECRYPT_MODE, skey, ivspec);
String decryptedResourceData = new String(cipher.doFinal(Base64.decodeBase64(encryptedData)));
```

## See also

- [Set up notifications for changes in user data](webhooks.md)
- [Subscription resource type](/graph/api/resources/subscription?view=graph-rest-beta)
- [Get subscription](/graph/api/subscription-get?view=graph-rest-1.0)
- [Create subscription](/graph/api/subscription-post-subscriptions?view=graph-rest-1.0)
- [Update subscription](/graph/api/subscription-update?view=graph-rest-1.0)
