---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Devices["{id}"].RegisteredUsers["{id}"].Reference
	.Request()
	.DeleteAsync();

```