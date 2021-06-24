---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String reason = "String";

graphClient.print().printers("{printerId}").jobs("{printJobId}")
	.abort(PrintJobAbortParameterSet
		.newBuilder()
		.withReason(reason)
		.build())
	.buildRequest()
	.post();

```