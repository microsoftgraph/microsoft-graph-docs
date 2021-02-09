---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.DirectoryRoles["{role-objectId}"].Members["{user-id}"].Reference
	.Request()
	.DeleteAsync();

```