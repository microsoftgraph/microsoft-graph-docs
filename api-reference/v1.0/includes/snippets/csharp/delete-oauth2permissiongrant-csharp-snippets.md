---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Oauth2PermissionGrants["{id}"]
	.Request()
	.DeleteAsync();

```