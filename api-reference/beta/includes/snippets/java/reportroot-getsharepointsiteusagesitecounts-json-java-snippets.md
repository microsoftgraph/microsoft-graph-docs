---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISharePointSiteUsageSiteCountsCollectionPage getSharePointSiteUsageSiteCounts = graphClient.reports()
	.getSharePointSiteUsageSiteCounts('D7')
	.buildRequest()
	.get();

```