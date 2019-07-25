---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISharePointActivityUserCountsCollectionPage getSharePointActivityUserCounts = graphClient.reports()
	.getSharePointActivityUserCounts('D7')
	.buildRequest()
	.get();

```