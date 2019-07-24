---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISharePointSiteUsageDetailCollectionPage getSharePointSiteUsageDetail = graphClient.reports()
	.getSharePointSiteUsageDetail('D7')
	.buildRequest()
	.get();

```