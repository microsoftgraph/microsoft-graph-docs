---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var dailyPrintUsageSummariesByPrinter = await graphClient.Print.Reports.DailyPrintUsageSummariesByPrinter
	.Request()
	.GetAsync();

```