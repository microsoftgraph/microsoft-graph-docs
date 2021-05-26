---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var monthlyPrintUsageSummariesByUser = await graphClient.Print.Reports.MonthlyPrintUsageSummariesByUser
	.Request()
	.GetAsync();

```