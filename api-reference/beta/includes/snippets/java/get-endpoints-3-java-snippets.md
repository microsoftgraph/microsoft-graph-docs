---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintUsageByPrinterCollectionPage dailyPrintUsageByPrinter = graphClient.print().reports().dailyPrintUsageByPrinter()
	.buildRequest()
	.get();

```