---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getTeamsUserActivityCounts = await graphClient.Reports
	.GetTeamsUserActivityCounts("D7")
	.Request()
	.GetAsync();

```