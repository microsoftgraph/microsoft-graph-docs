---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var monthlyPrintUsageSummariesByPrinter = await graphClient.Print.Reports.MonthlyPrintUsageSummariesByPrinter
	.Request()
	.GetAsync();

```