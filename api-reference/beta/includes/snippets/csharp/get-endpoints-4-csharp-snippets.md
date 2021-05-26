---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var dailyPrintUsageSummariesByUser = await graphClient.Print.Reports.DailyPrintUsageSummariesByUser
	.Request()
	.GetAsync();

```