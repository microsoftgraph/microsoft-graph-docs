---
title: "Use Microsoft Graph APIs to configure SAML-based single sign-on"
description: "Learn how to save time by using the Microsoft Graph APIs to automate the configuration of SAML-based single sign-on."
author: "kenwith"
localization_priority: Priority
ms.prod: "applications"
ms.custom: scenarios:getting-started
---

# Configure SAML-based single sign-on for your application using the Microsoft Graph API

In this article, you'll learn how to create and configure a SAML-based single sign-on (SSO) for your application in Azure Active Directory (Azure AD) using the Microsoft Graph API. The application configuration includes basic SAML URLs, a claims mapping policy, and using a certificate to add a custom signing key. After the application is created, you assign a user to it to be an administrator. You then can use a URL to obtain Azure AD SAML metadata for additional configuration of the application. 

This article uses an AWS Azure AD application template as an example, but you can use the steps in this article for any SAML-based app in the Azure AD Gallery.

>[!NOTE]
>The response objects and keys shown in this article might be shortened for readability.

## Prerequisites

- In this tutorial, you need a self-signed certificate that Azure AD can use to sign a SAML response. You can use your own certificate or you could use something like the following C# code to create a test certificate:

    > **Note** This code is for learning and reference **ONLY** and should not be used as-is in production.

    ```C#
    using System;
    using System.Security.Cryptography;
    using System.Security.Cryptography.X509Certificates;
    using System.Text;

    /* CONSOLE APP - PROOF OF CONCEPT CODE ONLY!!
     * This code uses a self-signed certificate and should not be used 
     * in production. This code is for reference and learning ONLY.
     */
    namespace Self_signed_cert
    {
      class Program
      {
        static void Main(string[] args)
        {
          // Generate a guid to use as a password and then create the cert.
          string password = Guid.NewGuid().ToString();
          var selfsignedCert = buildSelfSignedServerCertificate(password);

          // Print values so we can copy paste into the JSON fields.
          // Print out the private key in base64 format.
          Console.WriteLine("Private Key: {0}{1}", Convert.ToBase64String(selfsignedCert.Export(X509ContentType.Pfx, password)), Environment.NewLine);

          // Print out the start date in ISO 8601 format.
          DateTime startDate = DateTime.Parse(selfsignedCert.GetEffectiveDateString()).ToUniversalTime();
          Console.WriteLine("startDateTime: " + startDate.ToString("o"));

          // Print out the end date in ISO 8601 format.
          DateTime endDate = DateTime.Parse(selfsignedCert.GetExpirationDateString()).ToUniversalTime();
          Console.WriteLine("endDateTime: " + endDate.ToString("o"));

          // Print the GUID used for keyId
          string signAndPasswordGuid = Guid.NewGuid().ToString();
          string verifyGuid = Guid.NewGuid().ToString();
          Console.WriteLine("keyId GUID for Sign and passwordCredentials: " + signAndPasswordGuid);
          Console.WriteLine("keyId GUID for Verify: " + verifyGuid);

          // Print out the password.
          Console.WriteLine("Password: {0}", password);

          // Print out a displayName to use as an example.
          Console.WriteLine("displayName: CN=Example");
          Console.WriteLine();

          // Print out the public key.
          Console.WriteLine("Public Key: {0}{1}", Convert.ToBase64String(selfsignedCert.Export(X509ContentType.Cert)), Environment.NewLine);
          Console.WriteLine();

          // Generate the customKeyIdentifier using hash of thumbprint.
          Console.WriteLine("Cert thumprint: {0}{1}", selfsignedCert.Thumbprint, Environment.NewLine);
          Console.WriteLine("customKeyIdentifier:");
          string keyIdentifier = GetSha256FromThumbprint(selfsignedCert.Thumbprint);
          Console.WriteLine(keyIdentifier);
        }

        // Generate a self-signed certificate.
        private static X509Certificate2 buildSelfSignedServerCertificate(string password)
        {
          const string CertificateName = @"Microsoft Azure Federated SSO Certificate TEST";
          DateTime certificateStartDate = DateTime.UtcNow;
          DateTime certificateEndDate = certificateStartDate.AddYears(2).ToUniversalTime();

          X500DistinguishedName distinguishedName = new X500DistinguishedName($"CN={CertificateName}");

          using (RSA rsa = RSA.Create(2048))
          {
            var request = new CertificateRequest(distinguishedName, rsa, HashAlgorithmName.SHA256, RSASignaturePadding.Pkcs1);

            request.CertificateExtensions.Add (
              new X509KeyUsageExtension(X509KeyUsageFlags.DataEncipherment | X509KeyUsageFlags.KeyEncipherment | X509KeyUsageFlags.DigitalSignature, false)
            );

            var certificate = request.CreateSelfSigned(new DateTimeOffset(certificateStartDate), new DateTimeOffset(certificateEndDate));
                certificate.FriendlyName = CertificateName;

            return new X509Certificate2(certificate.Export(X509ContentType.Pfx, password), password, X509KeyStorageFlags.Exportable);
          }
        }

        // Generate hash from thumbprint.
        public static string GetSha256FromThumbprint(string thumbprint)
        {
          var message = Encoding.ASCII.GetBytes(thumbprint);
          SHA256Managed hashString = new SHA256Managed();
          return Convert.ToBase64String(hashString.ComputeHash(message));
        }
      }
    }
    ```

    To complete this tutorial you need to record the following values from your certificate:

    - Private Key
    - Start date and time
    - End date and time
    - Certificate password
    - Display name
    - Public key
    - Hash of the thumbprint
    - Key identifier

    In addition to the certificate values, you also need two new GUIDS for the keyIds that are used. The following example shows the output of the previously listed code:

    ```
    Private Key: MIIKW...AIBAzTVKCAgfQ

    startDateTime: 2020-12-17T20:33:07.0000000Z
    endDateTime: 2022-12-17T20:33:07.0000000Z
    keyId GUID for Sign and passwordCredentials: ed4f28e8-a502-4440-bfba-6038cb8506aa
    keyId GUID for Verify: e7b8c96e-dec3-4023-9c8b-ff40fa7faa3a
    Password: 74a7e867-e4f1-49a5-82fe-2087bf53e7df
    displayName: CN=Example

    Public Key: MIIDAz...pJTZg==

    Cert thumprint: 14B73D02E5094675063DF66A42B914DAD71633D7

    customKeyIdentifier:
    dD5ft4q5qrAQVusP6dDI7qKPnvZQbhkCxl1uNXQXwX0=
    ```

- This tutorial assumes that you are using Microsoft Graph Explorer, but you can use Postman, or create your own client app to call Microsoft Graph. To call the Microsoft Graph APIs in this tutorial, you need to use an account with the global administrator role and the appropriate permissions. For this tutorial, the `Application.ReadWrite.All`, `AppRoleAssignment.ReadWrite.All`, `Policy.Read.All`, and `Policy.ReadWrite.ApplicationConfiguration` delegated permissions are needed. Complete the following steps to set permissions in Microsoft Graph Explorer:

    1. Start [Microsoft Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
    2. Select **Sign-In with Microsoft** and sign in using an Azure AD global administrator account. After you successfully sign in, you can see the user account details in the left-hand pane.
    3. Select the settings icon to the right of the user account details, and then select **Select permissions**.

        ![Select the Microsoft Graph permissions](./images/application-saml-sso-configure-api/set-permissions.png)
        
    4. Scroll through the list of permissions to the `AppRoleAssignment` permissions, expand **AppRoleAssignment (1)**, and select the **AppRoleAssignment.ReadWrite.All** permission. Scroll further down the list of permissions to the `Application` permissions, expand **Application (2)**, and select the **Application.ReadWrite.All** permission. Continue to the `Policy` permissions, expand **Policy (13)**, and select the **Policy.Read.All**  and **Policy.ReadWrite.ApplicationConfiguration** permissions.

        ![Scroll to and select the approleassignment, application, and policy permissions](./images/application-saml-sso-configure-api/select-permissions.png)

    5. Select **Consent**, and then select **Accept** to accept the consent of the permissions. You do not need to consent on behalf of your organization for these permissions.

        ![Accept consent of the permissions](./images/application-saml-sso-configure-api/accept-permissions.png)

## Step 1: Create the application

Azure AD has a gallery that contains thousands of pre-integrated applications that you can use as a template for your application. The application template describes the metadata for that application. Using this template, you can create an instance of the application and service principal in your tenant for management. 

To create the application from the gallery, you first get the identifier of the application template and then use that identifier to create the application.

### Retrieve the gallery application template identifier

 In this tutorial, you retrieve the identifier of the application template for `Amazon Web Services (AWS)`. Record the value of the **id** property to use later in this tutorial.

#### Request

```http
GET https://graph.microsoft.com/beta/applicationTemplates?$filter=displayName eq 'Amazon Web Services (AWS)'
```

#### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#applicationTemplates",
  "value": [
    {
      "id": "8b1025e4-1dd2-430b-a150-2ef79cd700f5",
      "displayName": "Amazon Web Services (AWS)",
      "homePageUrl": "http://aws.amazon.com/",
      "supportedSingleSignOnModes": [
        "password",
        "saml",
        "external"
      ],
      "supportedProvisioningTypes": [
        "sync"
      ],
      "logoUrl": "https://az495088.vo.msecnd.net/app-logo/aws_215.png",
      "categories": [
        "developerServices",
        "topApps"
      ],
      "publisher": "Amazon",
      "description": null
    }
  ]
}
```

### Create the application

Using the **id** value that you recorded for the application template, create an instance of the application and service principal in your tenant. Record the value of the **objectId** property of the application and the value of the **objectId** property for the service principal to use later in this tutorial.

#### Request

```http
POST https://graph.microsoft.com/beta/applicationTemplates/8b1025e4-1dd2-430b-a150-2ef79cd700f5/instantiate
Content-type: application/json

{
  "displayName": "AWS Contoso"
}
```

> [!NOTE]
> Allow some time for the app to be provisioned into your Azure AD tenant. It is not instant. One strategy is to do a GET query on the application or service principal object every 5-10 seconds until the query is successful.

#### Response

```http
HTTP/1.1 201 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.applicationServicePrincipal",
  "application": {
    "objectId": "8f558912-0ca3-4f1e-ab6e-66ad7fa4e7bb",
    "appId": "536c33dc-dc28-42c8-ba1d-406524d83ec3",
    "applicationTemplateId": "8b1025e4-1dd2-430b-a150-2ef79cd700f5",
    "displayName": "AWS Contoso",
    "homepage": "https://signin.aws.amazon.com/saml?metadata=aws|ISV9.1|primary|z",
    "identifierUris": [],
    "publicClient": null,
    "replyUrls": [
      "https://signin.aws.amazon.com/saml"
    ],
    "logoutUrl": null,
    "samlMetadataUrl": null,
    "errorUrl": null,
    "groupMembershipClaims": null,
    "availableToOtherTenants": false
  },
  "servicePrincipal": {
    "objectId": "3161ab85-8f57-4ae0-82d3-7a1f71680b27",
    "deletionTimestamp": null,
    "accountEnabled": true,
    "appId": "536c33dc-dc28-42c8-ba1d-406524d83ec3",
    "appDisplayName": "AWS Contoso",
    "applicationTemplateId": "8b1025e4-1dd2-430b-a150-2ef79cd700f5",
    "appRoleAssignmentRequired": true,
    "displayName": "AWS Contoso",
    "errorUrl": null,
    "logoutUrl": null,
    "homepage": "https://signin.aws.amazon.com/saml?metadata=aws|ISV9.1|primary|z",
    "samlMetadataUrl": null,
    "microsoftFirstParty": null,
    "publisherName": "Contoso",
    "preferredTokenSigningKeyThumbprint": null,
    "replyUrls": [
      "https://signin.aws.amazon.com/saml"
    ],
    "servicePrincipalNames": [
      "536c33dc-dc28-42c8-ba1d-406524d83ec3"
    ],
    "tags": [
      "WindowsAzureActiveDirectoryIntegratedApp"
    ],
    "notificationEmailAddresses": [],
    "keyCredentials": [],
    "passwordCredentials": []
  }
}
```

## Step 2: Configure single sign-on

In this tutorial, you set `saml` as the single sign-on mode in the service principal. Use the **objectId** for the service principal that you recorded earlier.

#### Request

```http
PATCH https://graph.microsoft.com/beta/servicePrincipals/3161ab85-8f57-4ae0-82d3-7a1f71680b27
Content-type: servicePrincipal/json

{
  "preferredSingleSignOnMode": "saml"
}
```

#### Response

```http
HTTP/1.1 204
```

### Set basic SAML URLs

Using the **objectId** for the application that you recorded earlier, set the identifier URI and redirect URI for AWS in the application object.

#### Request

```http
PATCH https://graph.microsoft.com/beta/applications/8f558912-0ca3-4f1e-ab6e-66ad7fa4e7bb
Content-type: applications/json

{
  "web": {
    "redirectUris": [
      "https://signin.aws.amazon.com/saml"
    ] 
  },
  "identifierUris": [
    "https://signin.aws.amazon.com/saml"
  ]    
}
```

#### Response

```http
HTTP/1.1 204
```

### Add app roles (Optional)

If the application requires the role information in the token, add the definition of the roles in the application object. 

> [!NOTE] 
> When adding app roles, don't modify the default app roles `msiam_access`. 

Use the **objectId** for the service principal that you recorded earlier.

#### Request

```http
PATCH https://graph.microsoft.com/beta/serviceprincipals/3161ab85-8f57-4ae0-82d3-7a1f71680b27
Content-type: serviceprincipals/json

{
  "appRoles": [
    {
      "allowedMemberTypes": [
        "User"
      ],
      "description": "msiam_access",
      "displayName": "msiam_access",
      "id": "7dfd756e-8c27-4472-b2b7-38c17fc5de5e",
      "isEnabled": true,
      "origin": "Application",
      "value": null
    },
    {
      "allowedMemberTypes": [
        "User"
      ],
      "description": "Admin,WAAD",
      "displayName": "Admin,WAAD",
      "id": "454dc4c2-8176-498e-99df-8c4efcde41ef",
      "isEnabled": true,
      "value": "arn:aws:iam::212743507312:role/accountname-aws-admin,arn:aws:iam::212743507312:saml-provider/WAAD"
    },
    {
      "allowedMemberTypes": [
        "User"
      ],
      "description": "Finance,WAAD",
      "displayName": "Finance,WAAD",
      "id": "8642d5fa-18a3-4245-ab8c-a96000c1a217",
      "isEnabled": true,
      "value": "arn:aws:iam::212743507312:role/accountname-aws-finance,arn:aws:iam::212743507312:saml-provider/WAAD"
    }
  ]
}
```

#### Response

```http
HTTP/1.1 204
```

## Step 3: Configure claims mapping

### Create a claims mapping policy

In addition to the basic claims, configure the following claims for Azure AD to emit in the SAML token:

| Claim name | Source  |
|---------|---------|
| `https://aws.amazon.com/SAML/Attributes/Role` | assignedroles| 
| `https://aws.amazon.com/SAML/Attributes/RoleSessionName` | userprincipalname |
| `https://aws.amazon.com/SAML/Attributes/SessionDuration` | "900" |
| roles | assignedroles |
| `http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier` | userprincipalname |

> [!NOTE]
> Some keys in the claims mapping policy are case sensitive (for example, "Version"). If you receive an error message such as "Property has an invalid value", it might be a case sensitive issue.

Create the claims mapping policy and record the value of the **id** property to use later in this tutorial.

#### Request

```http
POST https://graph.microsoft.com/beta/policies/claimsMappingPolicies
Content-type: claimsMappingPolicies/json

{
  "definition": [
    "{\"ClaimsMappingPolicy\":{\"Version\":1,\"IncludeBasicClaimSet\":\"true\", \"ClaimsSchema\": [{\"Source\":\"user\",\"ID\":\"assignedroles\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/Role\"}, {\"Source\":\"user\",\"ID\":\"userprincipalname\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/RoleSessionName\"}, {\"Source\":\"user\",\"ID\":\"900\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/SessionDuration\"}, {\"Source\":\"user\",\"ID\":\"assignedroles\",\"SamlClaimType\": \"appRoles\"}, {\"Source\":\"user\",\"ID\":\"userprincipalname\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/nameidentifier\"}]}}"
    ],
  "displayName": "AWS Claims Policy",
  "isOrganizationDefault": false
}
```

#### Response

```http
HTTP/1.1 201 OK
Content-type: claimsMappingPolicies/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/claimsMappingPolicies/$entity",
  "id": "218e7879-5330-4ca6-8bca-ddb1f2402e73",
  "deletedDateTime": null,
  "definition": [
    "{\"ClaimsMappingPolicy\":{\"Version\":1,\"IncludeBasicClaimSet\":\"true\", \"ClaimsSchema\": [{\"Source\":\"user\",\"ID\":\"assignedroles\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/Role\"}, {\"Source\":\"user\",\"ID\":\"userprincipalname\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/RoleSessionName\"}, {\"Source\":\"user\",\"ID\":\"900\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/SessionDuration\"}, {\"Source\":\"user\",\"ID\":\"assignedroles\",\"SamlClaimType\": \"appRoles\"}, {\"Source\":\"user\",\"ID\":\"userprincipalname\",\"SamlClaimType\": \"https://aws.amazon.com/SAML/Attributes/nameidentifier\"}]}}"
    ],
  "displayName": "AWS Claims Policy",
  "isOrganizationDefault": false
}
```

### Assign a claims mapping policy to a service principal

Use the **objectId** for the service principal that you recorded earlier to assign a claims mapping policy to it. Use the value of the **id** property for the claims mapping policy in the body of the request.

#### Request

```http
POST https://graph.microsoft.com/beta/servicePrincipals/3161ab85-8f57-4ae0-82d3-7a1f71680b27/claimsMappingPolicies/$ref
Content-type: claimsMappingPolicies/json

{
  "@odata.id":"https://graph.microsoft.com/v1.0/policies/claimsMappingPolicies/218e7879-5330-4ca6-8bca-ddb1f2402e73"
}
```

#### Response

```http
HTTP/1.1 204
```

## Step 4: Configure a signing certificate

Assign your certificate to the application. 

#### Request

In the request body, provide these values:

**keyCredentials - Sign**

- **customKeyIdentifier** - The hash of the certificate thumbprint.
- **endDateTime** - The end date and time of the certificate.
- **keyId** - The identifier for the credential. Same as the keyId for the **passwordCredentials**.
- **startDateTime** - The start date of the certificate.
- **key** - The base-64 encoded private key of the certificate.
- **displayName** - The display name for the credentials.

**keyCredentials - Verify**

- **customKeyIdentifier** - The hash of the certificate thumbprint.
- **endDateTime** - The end date and time of the certificate.
- **keyId** - The identifier for the credential.
- **startDateTime** - The start date of the certificate.
- **key** - The base-64 encoded public key of the certificate.
- **displayName** - The display name for the credentials.

**passwordCredentials**

- **customKeyIdentifier** - The hash of the certificate thumbprint.
- **keyId** - The identifier for the credential. Same as the keyId for the **keyCredentials - Sign**.
- **endDateTime** - The end date and time of the certificate.
- **startDateTime** - The start date of the certificate.
- **secretText** - The password for the certificate.

```http
PATCH https://graph.microsoft.com/v1.0/servicePrincipals/3161ab85-8f57-4ae0-82d3-7a1f71680b27
Content-type: servicePrincipals/json

{
  "keyCredentials":[
    {
      "customKeyIdentifier": "dD5ft4q5qrAQVusP6dDI7qKPnvZQbhkCxl1uNXQXwX0=",
      "endDateTime": 2022-12-17T20:33:07.0000000Z",
      "keyId": "ed4f28e8-a502-4440-bfba-6038cb8506aa",
      "startDateTime": "2020-12-17T20:33:07.0000000Z",
      "type": "X509CertAndPassword",
      "usage": "Sign",
      "key":"MIIKIAIBAz.....HBgUrDgMCERE20nuTptI9MEFCh2Ih2jaaLZBZGeZBRFVNXeZmAAgIH0A==",
      "displayName": "CN=Example"
    },
    {
      "customKeyIdentifier": "dD5ft4q5qrAQVusP6dDI7qKPnvZQbhkCxl1uNXQXwX0=",
      "endDateTime": "2022-12-17T20:33:07.0000000Z",
      "keyId": "e35a7d11-fef0-49ad-9f3e-aacbe0a42c42",
      "startDateTime": "2020-12-17T20:33:07.0000000Z",
      "type": "AsymmetricX509Cert",
      "usage": "Verify",
      "key": "MIIDJzCCAg+gAw......CTxQvJ/zN3bafeesMSueR83hlCSyg==",
      "displayName": "CN=Example"
    }
  ],
  "passwordCredentials": [
    {
      "customKeyIdentifier": "dD5ft4q5qrAQVusP6dDI7qKPnvZQbhkCxl1uNXQXwX0=",
      "keyId": "ed4f28e8-a502-4440-bfba-6038cb8506aa",
      "endDateTime": "2022-01-27T19:40:33Z",
      "startDateTime": "2020-04-20T19:40:33Z",
      "secretText": "74a7e867-e4f1-49a5-82fe-2087bf53e7df"
    }
  ]
}
```

#### Response

```http
HTTP/1.1 204
```

### Activate the custom signing key

You need to set the **preferredTokenSigningKeyThumbprint** property of the service principal to the thumbprint of the certificate that you want Azure AD to use to sign the SAML response. 

#### Request

```http
PATCH https://graph.microsoft.com/v1.0/servicePrincipals/3161ab85-8f57-4ae0-82d3-7a1f71680b27

Content-type: servicePrincipals/json

{
    "preferredTokenSigningKeyThumbprint": "14B73D02E5094675063DF66A42B914DAD71633D7"
}
```

#### Response

```http
HTTP/1.1 204
```

## Step 5: Assign users

### Create a user account

For this tutorial, you create a user account that is added to the application. In the request body, change contoso.com to the domain name of your tenant. You can find tenant information on the Azure Active Directory overview page. Record the **id** of the user to be used later in this tutorial.

#### Request

```http
POST https://graph.microsoft.com/v1.0/users
Content-type: application/json

{
  "accountEnabled":true,
  "displayName":"MyTestUser1",
  "mailNickname":"MyTestUser1",
  "userPrincipalName":"MyTestUser1@contoso.com",
  "passwordProfile": {
    "forceChangePasswordNextSignIn":true,
    "password":"Contoso1234"
  }
}
```

#### Response

```http
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users/$entity",
  "id": "3ee91cc2-8edc-4f1a-8d71-7dd61348f8c4",
  "businessPhones": [],
  "displayName": "MyTestUser1",
  "givenName": null,
  "jobTitle": null,
  "mail": null,
  "mobilePhone": null,
  "officeLocation": null,
  "preferredLanguage": null,
  "surname": null,
  "userPrincipalName": "mytestuser1@contoso.com"
}
```

### Assign a user to the application

Assign the user that you created to the service principal and assign the `Admin,WAAD` app role. 

In the request body, provide these values:

- **principalId** - The **id** of the user account that you created.
- **appRoleId** - The **id** of the `Admin,WAAD` app role that you added.
- **resourceId** - The **id** of the service principal.

#### Request

```http
POST https://graph.microsoft.com/v1.0/servicePrincipals/3161ab85-8f57-4ae0-82d3-7a1f71680b27/appRoleAssignments
Content-type: appRoleAssignments/json

{
  "principalId": "3ee91cc2-8edc-4f1a-8d71-7dd61348f8c4",
  "principalType": "User",
  "appRoleId":"454dc4c2-8176-498e-99df-8c4efcde41ef",
  "resourceId":"3161ab85-8f57-4ae0-82d3-7a1f71680b27"
}
```

#### Response

```http
HTTP/1.1 201 
Content-type: appRoleAssignments/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#servicePrincipals('39406665-d521-40b7-9218-55070cae56b5')/appRoleAssignments/$entity",
  "id": "jKL4BeO2yUag4xULULSkza2HXRq_atpHrViBM89X55s",
  "deletedDateTime": null,
  "appRoleId": "454dc4c2-8176-498e-99df-8c4efcde41ef",
  "createdDateTime": "2021-02-11T22:51:36.8978032Z",
  "principalDisplayName": "MyTestUser1",
  "principalId": "05f8a28c-b6e3-46c9-a0e3-150b50b4a4cd",
  "principalType": "User",
  "resourceDisplayName": "AWS Contoso",
  "resourceId": "39406665-d521-40b7-9218-55070cae56b5"
}
```

## Step 6: Get Azure AD SAML metadata

Use the following URL to get the Azure AD SAML metadata for the specific configured application. The metadata contains information such as the signing certificate, Azure AD entityID, and Azure AD SingleSignOnService, among others.

`https://login.microsoftonline.com/{tenant-id}/federationmetadata/2007-06/federationmetadata.xml?appid={app-id}`

The following shows an example of what you might see for your application:

```
<EntityDescriptor xmlns="urn:oasis:names:tc:SAML:2.0:metadata" ID="_05fbbf53-e892-43c9-9300-1f6738ace02c" entityID="https://sts.windows.net/2f82f566-5953-43f4-9251-79c6009bdf24/">
<Signature xmlns="http://www.w3.org/2000/09/xmldsig#">

...

<SingleLogoutService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect" Location="https://login.microsoftonline.com/2f82f566-5953-43f4-9251-79c6009bdf24/saml2"/>
<SingleSignOnService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect" Location="https://login.microsoftonline.com/2f82f566-5953-43f4-9251-79c6009bdf24/saml2"/>
<SingleSignOnService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST" Location="https://login.microsoftonline.com/2f82f566-5953-43f4-9251-79c6009bdf24/saml2"/>
</IDPSSODescriptor>
</EntityDescriptor>
```

## Step 7: Clean up resources

In this step, you remove the resources that you created.


### Delete the application

Delete the application that you created.

#### Request

```http
DELETE https://graph.microsoft.com/beta/applications/4b01f51f-079b-4634-b767-7e19ad502cdb
```

#### Response

```http
No Content - 204
```

### Delete the user account

Delete the MyTestUser1 user account.

#### Request

```http
DELETE https://graph.microsoft.com/v1.0/users/3ee91cc2-8edc-4f1a-8d71-7dd61348f8c4
```

#### Response

```http
No Content - 204
```

### Delete the claims mapping policy

Delete the claims mapping policy.

#### Request

```http
DELETE https://graph.microsoft.com/beta/policies/claimsMappingPolicies/218e7879-5330-4ca6-8bca-ddb1f2402e73
```

#### Response

```http
No Content - 204
```

## See also

- For AWS, you can [enable user provisioning](/azure/active-directory/app-provisioning/application-provisioning-configure-api) to fetch all the roles from that AWS account. For more information, see [Configure the role claim issued in the SAML token](/azure/active-directory/develop/active-directory-enterprise-app-role-management).
- [Customize claims emitted in tokens for a specific app in a tenant](/azure/active-directory/develop/active-directory-claims-mapping).
- You can use the applicationTemplate API to instantiate [Non-Gallery apps](/azure/active-directory/manage-apps/view-applications-portal). Use applicationTemplateId `8adf8e6e-67b2-4cf2-a259-e3dc5476c621`.
- [New-SelfSignedCertificate](/powershell/module/pkiclient/new-selfsignedcertificate?view=win10-ps)
- [applicationTemplate](/graph/api/resources/applicationtemplate?view=graph-rest-beta)
- [appRoleAssignment](/graph/api/resources/approleassignment?view=graph-rest-1.0)
- [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-1.0)
- [application](/graph/api/resources/application?view=graph-rest-1.0)
- [claimsMappingPolicy](/graph/api/resources/claimsmappingpolicy?view=graph-rest-beta)
- [keyCredential](/graph/api/resources/keycredential?view=graph-rest-1.0)