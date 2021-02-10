---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Sites["{sitesId}"].Permissions["{permissionId}"]
	.Request()
	.DeleteAsync();

```