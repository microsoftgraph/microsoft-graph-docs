---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IYammerGroupsActivityGroupCountsCollectionPage getYammerGroupsActivityGroupCounts = graphClient.reports()
	.getYammerGroupsActivityGroupCounts('D7')
	.buildRequest()
	.get();

```