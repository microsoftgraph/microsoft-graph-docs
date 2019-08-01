---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IOffice365ActivationCountsCollectionPage getOffice365ActivationCounts = graphClient.reports()
	.getOffice365ActivationCounts()
	.buildRequest()
	.get();

```