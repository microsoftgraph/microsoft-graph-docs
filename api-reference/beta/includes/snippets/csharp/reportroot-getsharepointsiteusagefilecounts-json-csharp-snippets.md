---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSharePointSiteUsageFileCounts = await graphClient.Reports
	.GetSharePointSiteUsageFileCounts("D7")
	.Request()
	.GetAsync();

```