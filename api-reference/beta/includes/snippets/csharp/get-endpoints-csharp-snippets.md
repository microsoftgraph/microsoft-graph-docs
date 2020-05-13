---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var reportRoot = await graphClient.Print.Reports["monthlyPrintUsageSummariesByUser"]
	.Request()
	.GetAsync();

```