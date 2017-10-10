# identityProvider resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an Azure Active Directory Identity Provider.

Examples of Identity Providers are Microsoft Account, Google, Facebook, Amazon, and LinkedIn.  First, each Identity Provider must be configured in an Azure AD tenant or Azure AD B2C tenant.  This usually involves creating an app registration with the Identity Provider in order to get a client id and client secret that can be passed to [create identityProvider](../api/identityprovider_post.md).  Then, each user object in the directory can be federated to any of the tenant's Identity Providers for authentication.  This enables that user login by typing credentials in the Identity Provider's sign in page.  The token from the Identity Provider is validated before the tenant issues a token to the relying party application.

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
|clientSecret|String|Yes|No|The client-secret for the app used to access the identity provider. This is write-only. A read operation will return "*****" for security.|
|scopes|String|No|No|The scopes to request from the identity provider.  This is a space delimited list of scopes.|

#### Common Relationships
|Relationship|Type|Description|
|:-------------|:-----------|:-----------|
|appliesTo|[directoryObject](../resources/directoryObject.md) collection|The directory in which the identityProvider is configured.|

## JSON representation
Here is a JSON representation of the resource.

```json
{
    "id": "Amazon-OAUTH",
    "type": "Amazon",
    "name": "displayName",
    "clientId": "string",
    "clientSecret": "string",
    "scopes": "string",
}
```
