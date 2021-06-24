---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintJobCollectionPage jobs = graphClient.print().printers("{printerId}").jobs()
	.buildRequest()
	.get();

```