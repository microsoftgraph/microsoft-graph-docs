---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISkypeForBusinessActivityUserCountsCollectionPage getSkypeForBusinessActivityUserCounts = graphClient.reports()
	.getSkypeForBusinessActivityUserCounts('D7')
	.buildRequest()
	.get();

```