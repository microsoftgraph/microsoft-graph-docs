---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Teams["{id}"].Channels["{id}"].Members["{id}"]
	.Request()
	.DeleteAsync();

```