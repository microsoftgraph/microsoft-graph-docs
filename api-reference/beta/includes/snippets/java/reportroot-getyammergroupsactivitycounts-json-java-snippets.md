---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IYammerGroupsActivityCountsCollectionPage getYammerGroupsActivityCounts = graphClient.reports()
	.getYammerGroupsActivityCounts('D7')
	.buildRequest()
	.get();

```