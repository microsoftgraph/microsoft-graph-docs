# identityProvider resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an Azure Active Directory Identity Provider.

Examples of Identity Providers are Microsoft Account, Google, Facebook, Amazon, and LinkedIn.  First, each Identity Provider must be configured in an Azure AD tenant or Azure AD B2C tenant.  Each identity provider has a process for creating an app registration in their respective system.  For example, creating an app registration with Facebook is done at [developers.facebook.com](https://developers.facebook.com/).  The resulting client id and client secret can be passed to [create identityProvider](../api/identityprovider_post.md).  Then, each user object in the directory can be federated to any of the tenant's Identity Providers for authentication.  This enables the user to login by entering credentials in the Identity Provider's sign in page.  The token from the Identity Provider is validated by Azure AD before the tenant issues a token to the relying party application.

## Scenarios

There are B2B and B2C scenarios that require configuring an Identity Provider in your tenant.  Some of the B2B scenarios in Azure AD are:

* Invite a Gmail user to collaborate with your organization (example: Share an Office 365 resource).  Allow that user to use their existing Google account for authentication.
* Send a rights protected email to a Gmail user.  Allow that user to read the email after authenticating with their Google account.

Some of the Azure AD B2C scenarios are:

* Sign-up and sign-in a consumer facing application using a social account.
* Link your existing local account (email and password account) to a social account.

## Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get identityProvider](../api/identityprovider_get.md) |identityProvider|Read properties of an existing identityProvider.|
|[Create identityProvider](../api/identityprovider_post.md)|identityProvider|Create a new identityProvider.|
|[Update identityProvider](../api/identityprovider_update.md)|None|Update an existing identityProvider.|
|[Delete identityProvider](../api/identityprovider_delete.md)|None|Delete an existing identityProvider.|
|[List identityProvider](../api/identityprovider_list.md)|identityProvider collection|List all identityProviders configured in a tenant.|

### Common Properties
|Property|Type|Required|Nullable|Description|
|:---------------|:--------|:--------|:--------|:----------|
|id|String|No|No|The id of the identity provider.|
|type|String|Yes|No|The identity provider type. It must be one of the following values: <li/>Microsoft<li/>Google<li/>Amazon<li/>LinkedIn<li/>Facebook|
|name|String|No|No|The display name of the identity provider.|
|clientId|String|Yes|No|The clientId of the application used to access the identity provider.|
|clientSecret|String|Yes|No|The client-secret for the app used to access the identity provider. This is write-only. A read operation will return "*****".|

## JSON representation
Here is a JSON representation of the resource.

```json
{
    "id": "Amazon-OAUTH",
    "type": "Amazon",
    "name": "Login with Amazon",
    "clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",
    "clientSecret": "abc0123456789",
}
```
