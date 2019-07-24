---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISiteActivitySummaryCollectionPage getOneDriveActivityUserCounts = graphClient.reports()
	.getOneDriveActivityUserCounts('D7')
	.buildRequest()
	.get();

```