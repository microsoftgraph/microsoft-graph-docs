---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintUsageByPrinterCollectionPage dailyPrintUsageSummariesByPrinter = graphClient.print().reports().dailyPrintUsageSummariesByPrinter()
	.buildRequest()
	.get();

```