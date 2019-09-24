---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.OAuth2Permissiongrants["{id}"]
	.Request()
	.DeleteAsync();

```