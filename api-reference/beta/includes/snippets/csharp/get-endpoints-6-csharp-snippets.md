---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var monthlyPrintUsageByUser = await graphClient.Print.Reports.MonthlyPrintUsageByUser
	.Request()
	.GetAsync();

```