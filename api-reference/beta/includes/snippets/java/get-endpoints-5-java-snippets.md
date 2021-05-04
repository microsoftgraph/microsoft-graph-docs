---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintUsageByPrinterCollectionPage monthlyPrintUsageSummariesByPrinter = graphClient.print().reports().monthlyPrintUsageSummariesByPrinter()
	.buildRequest()
	.get();

```