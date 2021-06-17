---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintUsageByPrinter printUsageByPrinter = graphClient.print().reports().dailyPrintUsageByPrinter("016b5565-3bbf-4067-b9ff-4d68167eb1a6")
	.buildRequest()
	.get();

```