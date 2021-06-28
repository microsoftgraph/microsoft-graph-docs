---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var dailyPrintUsageByPrinter = await graphClient.Print.Reports.DailyPrintUsageByPrinter
	.Request()
	.GetAsync();

```