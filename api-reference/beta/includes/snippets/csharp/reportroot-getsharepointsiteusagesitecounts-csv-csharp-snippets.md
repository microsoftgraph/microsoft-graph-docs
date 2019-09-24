---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSharePointSiteUsageSiteCounts = await graphClient.Reports
	.GetSharePointSiteUsageSiteCounts("D7")
	.Request()
	.GetAsync();

```