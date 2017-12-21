# identityProvider resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an Azure Active Directory (Azure AD) identity provider. The identity provider can be Microsoft, Google, Facebook, Amazon, or LinkedIn.

Configuring an identity provider in your Azure AD B2C tenant enables:

* Users to sign up and sign in using a social account in a consumer application. For example, an application can use Azure AD B2C to allow users to sign up for the service using a Facebook account.
* Users to link an existing local account to a social account in a consumer application. For example, a user has created a username and password (local account) in the application. The user later decides to link the existing local account to their Facebook account so they can sign in using Facebook.

Configuring an identity provider in your Azure AD tenant enables future B2B guest scenarios. For example, an organization has resources in Office 365 that need to be shared with a Gmail user. The Gmail user will use their Google account credentials to authenticate and access the documents.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get identityProvider](../api/identityprovider_get.md) |identityProvider|Read properties of an existing identityProvider.|
|[Create identityProvider](../api/identityprovider_post_identityproviders.md)|identityProvider|Create a new identityProvider.|
|[Update identityProvider](../api/identityprovider_update.md)|None|Update an existing identityProvider.|
|[Delete identityProvider](../api/identityprovider_delete.md)|None|Delete an existing identityProvider.|
|[List identityProviders](../api/identityprovider_list.md)|identityProvider collection|List all identityProviders configured in a tenant.|

## Properties

|Property|Type|Required|Nullable|Description|
|:---------------|:--------|:--------|:--------|:----------|
|clientId|String|Yes|No|The client ID for the application. This is the client ID obtained when registering the application with the identity provider.|
|clientSecret|String|Yes|No|The client secret for the application. This is the client secret obtained when registering the application with the identity provider. This is write-only. A read operation will return "\*\*\*\*".|
|id|String|No|No|The ID of the identity provider.|
|name|String|No|No|The display name of the identity provider.|
|type|String|Yes|No|The identity provider type. It must be one of the following values: <ul><li/>Microsoft<li/>Google<li/>Amazon<li/>LinkedIn<li/>Facebook</ul>|

### Where to get the client ID and secret

Each identity provider has a process for creating an app registration. For example, users create an app registration with Facebook at [developers.facebook.com](https://developers.facebook.com/). The resulting client ID and client secret can be passed to [create identityProvider](../api/identityprovider_post_identityproviders.md). Then, each user object in the directory can be federated to any of the tenant's identity providers for authentication. This enables the user to sign in by entering credentials on the identity provider's sign in page. The token from the identity provider is validated by Azure AD before the tenant issues a token to the application.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.IdentityProvider"
} -->

```json
{
    "id": "String",
    "type": "String",
    "name": "String",
    "clientId": "String",
    "clientSecret": "String"
}
```
