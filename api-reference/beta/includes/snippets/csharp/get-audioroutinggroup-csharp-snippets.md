---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var audioRoutingGroup = await graphClient.Communications.Calls["{id}"].AudioRoutingGroups["{id}"]
	.Request()
	.GetAsync();

```