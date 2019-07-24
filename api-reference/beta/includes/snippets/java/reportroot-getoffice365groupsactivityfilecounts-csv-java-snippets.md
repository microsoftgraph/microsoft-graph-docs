---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IOffice365GroupsActivityFileCountsCollectionPage getOffice365GroupsActivityFileCounts = graphClient.reports()
	.getOffice365GroupsActivityFileCounts('D7')
	.buildRequest()
	.get();

```