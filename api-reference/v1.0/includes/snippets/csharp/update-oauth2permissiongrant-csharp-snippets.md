---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var oAuth2PermissionGrant = new OAuth2PermissionGrant
{
	Scope = "scope-value"
};

await graphClient.Oauth2PermissionGrants["{id}"]
	.Request()
	.UpdateAsync(oAuth2PermissionGrant);

```