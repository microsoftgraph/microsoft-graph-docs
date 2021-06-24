---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var dailyPrintUsageByUser = await graphClient.Print.Reports.DailyPrintUsageByUser
	.Request()
	.GetAsync();

```