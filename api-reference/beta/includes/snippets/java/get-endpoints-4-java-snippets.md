---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintUsageByUserCollectionPage dailyPrintUsageByUser = graphClient.print().reports().dailyPrintUsageByUser()
	.buildRequest()
	.get();

```