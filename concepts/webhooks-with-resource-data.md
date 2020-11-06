---
title: "Set up change notifications that include resource data"
description: "Microsoft Graph uses a webhook mechanism to deliver change notifications to clients. Change notifications can include resource properties."
author: "davidmu1"
ms.prod: "non-product-specific"
localization_priority: Priority
---

# Set up change notifications that include resource data

Microsoft Graph allows apps to subscribe to change notifications for resources via [webhooks](webhooks.md). You can set up subscriptions to include the changed resource data (such as the content of a Microsoft Teams chat message or Microsoft Teams presence information) in change notifications. Your app can then run its business logic without having to make a separate API call to fetch the changed resource. As a result, the app performs better by making fewer API calls, which is beneficial in large scale scenarios.

Including resource data as part of change notifications requires you to implement the following additional logic to satisfy data access and security requirements: 

- [Handle](webhooks-outlook-authz.md#responding-to-reauthorizationrequired-notifications) special subscription lifecycle notifications (preview) to maintain an uninterrupted flow of data. Microsoft Graph sends lifecycle notifications from time to time to require an app to re-authorize, to make sure access issues have not unexpectedly cropped up for including resource data in change notifications.
- [Validate](#validating-the-authenticity-of-notifications) the authenticity of change notifications as having originated from Microsoft Graph.
- [Provide](#decrypting-resource-data-from-change-notifications) a public encryption key and use a private key to decrypt resource data received through change notifications.

## Resource data in notification payload

In general, this type of change notifications include the following resource data in the payload:

- ID and type of the changed resource instance, returned in the **resourceData** property.
- All the property values of that resource instance, encrypted as specified in the subscription, returned in the **encryptedContent** property.
- Or, depending on the resource, specific properties returned in the **resourceData** property. To get only specific properties, specify them as part of the **resource** URL in the subscription, using a `$select` parameter.  


## Supported resources

Currently, the Microsoft Teams [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta) as well as the Microsoft Teams [presence](/graph/api/resources/presence?view=graph-rest-beta) (preview) resources supports change notifications that include resource data. Specifically, you can set up a subscription that applies to one of the following:

- New or changed messages in a specific Teams channel: `/teams/{id}/channels/{id}/messages`
- New or changed messages in a specific Teams chat: `/chats/{id}/messages`
- User's presence information update: `/communications/presences/{id}`

The **chatMessage** and the **presence** (preview) resources support including all the properties of a changed instance in a change notification. They do not support returning only selective properties of the instance. 

This article walks through an example of subscribing to change notifications of messages in a Teams channel, with each change notification including the full resource data of the changed **chatMessage** instance.

## Creating a subscription

To have resource data included in change notifications, you **must** specify the following properties, in addition to those that are usually specified when [creating a subscription](webhooks.md#creating-a-subscription):

- **includeResourceData** which should be set to `true` to explicitly request resource data.
- **encryptionCertificate** which contains only the public key that Microsoft Graph uses to encrypt resource data. Keep the corresponding private key to [decrypt the content](#decrypting-resource-data-from-change-notifications).
- **encryptionCertificateId** which is your own identifier for the certificate. Use this ID to match in each change notification, which certificate to use for decryption.

Keep the following in mind:

- Validate both endpoints as described in [Notification endpoint validation](webhooks.md#notification-endpoint-validation). If you choose to use the same URL for both endpoints, you will receive and respond to two validation requests.

### Subscription request example

The following example subscribes to channel messages being created or updated in Microsoft Teams.

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json
{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
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
  "resource": "/teams/{id}/channels/{id}/messages",
  "includeResourceData": true,
  "encryptionCertificateId": "{custom ID}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secret client state}"
}
```

## Subscription lifecycle notifications (preview)

Certain events can interfere with change notification flow in an existing subscription. Subscription lifecycle notifications inform you actions to take in order to maintain an uninterrupted flow. Unlike a resource change notification which informs a change to a resource instance, a lifecycle notification is about the subscription itself, and its current state in the lifecycle. 

For more information about how to receive, and respond to, lifecycle notifications (preview), see [Reduce missing subscriptions and change notifications (preview)](webhooks-outlook-authz.md)

## Validating the authenticity of notifications

Apps often run business logic based on resource data included in change notifications. Verifying the authenticity of each change notification first is important. Otherwise, a third party can spoof your app with false change notifications and make it run its business logic incorrectly, and this can lead to a security incident.

For basic change notifications that do not contain resource data, simply validate them based on the **clientState** value as described in [Processing the change notification](webhooks.md#processing-the-change-notification). This is acceptable, as you can make subsequent trusted Microsoft Graph calls to get access to resource data, and therefore the impact of any spoofing attempts is limited. 

For change notifications that deliver resource data, perform a more thorough validation before processing the data.

In this section:

- [Validation tokens in the change notification](#validation-tokens-in-the-change-notification)
- [How to validate](#how-to-validate)
- [Example JWT token](#example-jwt-token)

### Validation tokens in the change notification

A change notification with resource data contains an additional property, **validationTokens**, which contains an array of JWT tokens generated by Microsoft Graph. Microsoft Graph generates a single token for each distinct app and tenant pair for whom there is an item in the **value** array. Keep in mind that change notifications may contain a mix of items for various apps and tenants that subscribed using the same **notificationUrl**.

In the following example, the change notification contains two items for the same app, and for two different tenants, therefore the **validationTokens** array contains two tokens that need to be validated.

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

> **Note:** for a full description of the data sent when change notifications are delivered, see [changeNotificationCollection](/graph/api/resources/changenotificationcollection).

### How to validate

If you're new to token validation, see [Principles of Token Validation](http://www.cloudidentity.com/blog/2014/03/03/principles-of-token-validation/) for an overview. Use an SDK, such as the [System.IdentityModel.Tokens.Jwt](https://www.nuget.org/packages/System.IdentityModel.Tokens.Jwt/) library for .NET, or a third-party library for a different platform.

Be mindful of the following: 

- Make sure to always send an `HTTP 202 Accepted` status code as part of the response to the change notification. 
- Respond before validating the change notification (for example, if you store change notifications in queues for later processing) or after (if you process them on the fly), even if validation failed.
- Accepting a change notification prevents unnecessary delivery retries and it also prevents any potential rogue actors from finding out if they passed or failed validation. You can always choose to ignore an invalid change notification after you have accepted it.

In particular, perform validation on every JWT token in the **validationTokens** collection. If any tokens fail, consider the change notification suspicious and investigate further. 

Use the following steps to validate tokens and apps that generate tokens:

1. Validate that the token has not expired.

2. Validate the token has not been tampered with and was issued by the expected authority, Microsoft identity platform:

    - Obtain the signing keys from the common configuration endpoint: `https://login.microsoftonline.com/common/.well-known/openid-configuration`. This configuration is cached by your app for a period of time. Be aware that the configuration is updated frequently as signing keys are rotated daily.
    - Verify the signature of the JWT token using those keys.

    Do not accept tokens issued by any other authority.

3. Validate that the token was issued for your app that is subscribing to change notifications.

    The following steps are part of standard validation logic in JWT token libraries and can typically be executed as a single function call. 
    - Validate the "audience" in the token matches your app ID.
    - If you have more than one app receiving change notifications, make sure to check for multiple IDs.


4. **Critical**: Validate that the app that generated the token represents the Microsoft Graph change notification publisher. 

    - Check that the **appid** property in the token matches the expected value of `0bf30f3b-4a52-48df-9a82-234910c4a086`.
    - This ensures that change notifications are not sent by a different app that is not Microsoft Graph.


### Example JWT token

The following is an example of the properties included in the JWT token that are needed for validation.

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
    var configurationManager = new ConfigurationManager<OpenIdConnectConfiguration>("https://login.microsoftonline.com/common/v2.0/.well-known/openid-configuration", new OpenIdConnectConfigurationRetriever());
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
```JavaScript
import jwt from 'jsonwebtoken';
import jkwsClient from 'jwks-rsa';

const client = jkwsClient({
  jwksUri: 'https://login.microsoftonline.com/common/discovery/v2.0/keys'
});

export function getKey(header, callback) {
  client.getSigningKey(header.kid, (err, key) => {
    var signingKey = key.publicKey || key.rsaPublicKey;
    callback(null, signingKey);
  });
}

export function isTokenValid(token, appId, tenantId) {
  return new Promise((resolve) => {
    const options = {
      audience: [appId],
      issuer: [`https://sts.windows.net/${tenantId}/`]
    };
    jwt.verify(token, getKey, options, (err) => {
      if (err) {
        // eslint-disable-next-line no-console
        console.error(err);
        resolve(false);
      } else {
        resolve(true);
      }
    });
  });
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

The **resourceData** property of a change notification includes only the basic ID and type information of a resource instance. The **encryptedData** property contains the full resource data, encrypted by Microsoft Graph using the public key provided in the subscription. The property also contains values required for verification and decryption. This is done to increase the security of customer data accessed via change notifications. It is your responsibility to secure the private key to ensure that customer data cannot be decrypted by a third party, even if they manage to intercept the original change notifications.

In this section:

- [Managing encryption keys](#managing-encryption-keys)
- [Decrypting resource data](#decrypting-resource-data)
- [Example: decrypting a notification with encrypted resource data](#example-decrypting-a-notification-with-encrypted-resource-data)

### Managing encryption keys

1. Obtain a certificate with a pair of asymmetric keys.

    - You can self-sign the certificate, since Microsoft Graph does not verify the certificate issuer, and uses the public key for only encryption. 
    - Use [Azure Key Vault](/azure/key-vault/key-vault-whatis) as the solution to create, rotate, and securely manage certificates. Make sure the keys satisfy the following criteria:

        - The key must be of type `RSA`
        - The key size must be between 2048 and 4096 bits

2. Export the certificate in base64-encoded X.509 format, and **include only the public key**. 

3. When creating a subscription:

    - Provide the certificate in the **encryptionCertificate** property, using the base64-encoded content that the certificate was exported in.
    - Provide your own identifier in the **encryptionCertificateId** property. 
  
        This identifier allows you to match your certificates to the change notifications you receive, and to retrieve certificates from your certificate store. The identifier can be up to 128 characters.

4. Manage the private key securely, so that your change notification processing code can access the private key to decrypt resource data.

#### Rotating keys

To minimize the risk of a private key becoming compromised, periodically change your asymmetric keys. Follow these steps to introduce a new pair of keys:

1. Obtain a new certificate with a new pair of asymmetric keys. Use it for all new subscriptions being created.

2. Update existing subscriptions with the new certificate key.

    - Do this as part of regular subscription renewal. 
    - Or, enumerate all subscriptions and provide the key. Use the [PATCH operation on the subscription](/graph/api/subscription-update?view=graph-rest-1.0) and update the **encryptionCertificate** and **encryptionCertificateId** properties.

3. Keep in mind the following:
    - For a period of time, the old certificate may still be used for encryption. Your app must have access to both old and new certificates to be able to decrypt content.
    - Use the **encryptionCertificateId** property in each change notification to identify the correct key to use.
    - Discard of the old certificate only when you have seen no recent change notifications referencing it.

### Decrypting resource data

To optimize performance, Microsoft Graph uses a two-step encryption process:
  - It generates a single use symmetric key, and uses it to encrypt resource data.
  - It uses the public asymmetric key (that you provided when subscribing) to encrypt the symmetric key and includes it in each change notification of that subscription.

Always assume that the symmetric key is different for each item in the change notification.

To decrypt resource data, your app should perform the reverse steps, using the properties under **encryptedContent** in each change notification:

1. Use the **encryptionCertificateId** property to identify the certificate to use.

2. Initialize an RSA cryptographic component (such as the .NET [RSACryptoServiceProvider](/dotnet/api/system.security.cryptography.rsacryptoserviceprovider.decrypt?view=netframework-4.8)) with the private key.

3. Decrypt the symmetric key delivered in the **dataKey** property of each item in the change notification.

    Use Optimal Asymmetric Encryption Padding (OAEP) for the decryption algorithm.

4. Use the symmetric key to calculate the HMAC-SHA256 signature of the value in **data**.
  
    Compare it to the value in **dataSignature**. If they do not match, assume the payload has been tampered with and do not decrypt it.

5. Use the symmetric key with an Advanced Encryption Standard (AES) (such as the .NET [AesCryptoServiceProvider](/dotnet/api/system.security.cryptography.aescryptoserviceprovider?view=netframework-4.8)) to decrypt the content in **data**.

    - Use the following decryption parameters for the AES algorithm:

        - Padding: PKCS7
        - Cipher mode: CBC
    - Set the "initialization vector" by copying the first 16 bytes of the symmetric key used for decryption.

6. The decrypted value is a JSON string that represents the resource instance in the change notification.


### Example: decrypting a notification with encrypted resource data

The following is an example change notification that includes encrypted property values of a **chatMessage** instance in a channel message. The instance is specified by the `@odata.id` value.

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

> **Note:** for a full description of the data sent when change notifications are delivered, see [changeNotificationCollection](/graph/api/resources/changenotificationcollection).


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
```JavaScript
const base64encodedKey = 'base 64 encoded dataKey value';
const asymetricPrivateKey = 'pem encoded private key';
const decodedKey = Buffer.from(base64encodedKey, 'base64');
const decryptedSymetricKey = crypto.privateDecrypt(asymetricPrivateKey, decodedKey);
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
if (comparisonSignature.equals(encodedHashedData))
{
    // Continue with decryption of the encryptedPayload.
}
else
{
    // Do not attempt to decrypt encryptedPayload. Assume notification payload has been tampered with and investigate.
}
```
```JavaScript
const decryptedSymetricKey = []; //Buffer provided by previous step
const base64encodedSignature = 'base64 encodded value from the dataSignature property';
const hmac = crypto.createHmac('sha256', decryptedSymetricKey);
hmac.write(base64encodedPayload, 'base64');
if(base64encodedSignature === hmac.digest('base64'))
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
```JavaScript
const base64encodedPayload = 'base64 encoded value from data property';
const decryptedSymetricKey = []; //Buffer provided by previous step
const iv = Buffer.alloc(16, 0);
decryptedSymetricKey.copy(iv, 0, 0, 16);
const decipher = crypto.createDecipheriv('aes-256-cbc', decryptedSymetricKey, iv);
let decryptedPayload = decipher.update(base64encodedPayload, 'base64', 'utf8');
decryptedPayload += decipher.final('utf8');
```

## See also

- [Set up notifications for changes in user data](webhooks.md)
- [Subscription resource type](/graph/api/resources/subscription?view=graph-rest-beta)
- [Get subscription](/graph/api/subscription-get?view=graph-rest-1.0)
- [Create subscription](/graph/api/subscription-post-subscriptions?view=graph-rest-1.0)
- [Update subscription](/graph/api/subscription-update?view=graph-rest-1.0)