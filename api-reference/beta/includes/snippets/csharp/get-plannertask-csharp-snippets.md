---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerTask = await graphClient.Planner.Tasks["01gzSlKkIUSUl6DF_EilrmQAKDhh"]
	.Request()
	.GetAsync();

```