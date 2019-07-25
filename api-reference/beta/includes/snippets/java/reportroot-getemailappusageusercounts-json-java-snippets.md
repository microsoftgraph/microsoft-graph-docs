---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEmailAppUsageUserCountsCollectionPage getEmailAppUsageUserCounts = graphClient.reports()
	.getEmailAppUsageUserCounts('D7')
	.buildRequest()
	.get();

```