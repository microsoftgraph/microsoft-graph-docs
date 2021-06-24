---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintUsageByUser printUsageByUser = graphClient.print().reports().dailyPrintUsageSummariesByUser("{id}")
	.buildRequest()
	.get();

```