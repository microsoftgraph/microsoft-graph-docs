---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintUsageByUserCollectionPage dailyPrintUsageSummariesByUser = graphClient.print().reports().dailyPrintUsageSummariesByUser()
	.buildRequest()
	.get();

```