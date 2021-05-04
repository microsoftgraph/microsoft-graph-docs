---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printUsageByUser = await graphClient.Reports.DailyPrintUsageByUser["{printUsageByUser-id}"]
	.Request()
	.GetAsync();

```