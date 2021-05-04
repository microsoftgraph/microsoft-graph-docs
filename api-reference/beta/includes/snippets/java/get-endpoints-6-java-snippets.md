---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintUsageByUserCollectionPage monthlyPrintUsageSummariesByUser = graphClient.print().reports().monthlyPrintUsageSummariesByUser()
	.buildRequest()
	.get();

```