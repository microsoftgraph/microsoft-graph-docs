---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IActivityStatisticsCollectionPage activityStatistics = graphClient.me().analytics().activityStatistics()
	.buildRequest()
	.get();

```