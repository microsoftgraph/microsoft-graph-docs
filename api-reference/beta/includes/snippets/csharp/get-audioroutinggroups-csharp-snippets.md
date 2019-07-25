---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var audioRoutingGroups = await graphClient.App.Calls["{id}"].AudioRoutingGroups
	.Request()
	.GetAsync();

```