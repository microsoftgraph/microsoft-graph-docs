---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IOffice365ActivationsUserCountsCollectionPage getOffice365ActivationsUserCounts = graphClient.reports()
	.getOffice365ActivationsUserCounts()
	.buildRequest()
	.get();

```