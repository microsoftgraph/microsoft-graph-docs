---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISiteActivitySummaryCollectionPage getSharePointActivityFileCounts = graphClient.reports()
	.getSharePointActivityFileCounts('D7')
	.buildRequest()
	.get();

```