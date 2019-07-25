---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ITeamsUserActivityUserCountsCollectionPage getTeamsUserActivityUserCounts = graphClient.reports()
	.getTeamsUserActivityUserCounts('D7')
	.buildRequest()
	.get();

```