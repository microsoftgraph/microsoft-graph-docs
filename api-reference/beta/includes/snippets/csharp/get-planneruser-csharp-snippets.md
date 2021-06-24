---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerUser = await graphClient.Me.Planner
	.Request()
	.GetAsync();

```