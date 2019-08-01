---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ITeamsDeviceUsageDistributionUserCountsCollectionPage getTeamsDeviceUsageDistributionUserCounts = graphClient.reports()
	.getTeamsDeviceUsageDistributionUserCounts('D7')
	.buildRequest()
	.get();

```