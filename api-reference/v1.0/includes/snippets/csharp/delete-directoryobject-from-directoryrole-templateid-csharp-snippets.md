---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.DirectoryRoles["{directoryRole-id}"].Members["{directoryObject-id}"].Reference
	.Request()
	.DeleteAsync();

```