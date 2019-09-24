---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSharePointSiteUsagePages = await graphClient.Reports
	.GetSharePointSiteUsagePages("D7")
	.Request()
	.GetAsync();

```