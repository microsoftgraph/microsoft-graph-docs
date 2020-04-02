---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSharePointSiteUsageStorage = await graphClient.Reports
	.GetSharePointSiteUsageStorage("D7")
	.Request()
	.GetAsync();

```