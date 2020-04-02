---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getTeamsUserActivityUserDetail = await graphClient.Reports
	.GetTeamsUserActivityUserDetail("D7")
	.Request()
	.GetAsync();

```