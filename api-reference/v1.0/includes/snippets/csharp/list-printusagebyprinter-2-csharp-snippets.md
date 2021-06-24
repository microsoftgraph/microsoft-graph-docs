---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var monthlyPrintUsageByPrinter = await graphClient.Reports.MonthlyPrintUsageByPrinter
	.Request()
	.GetAsync();

```