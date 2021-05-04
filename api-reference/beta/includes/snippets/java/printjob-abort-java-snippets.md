---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.print().printers("{id}").jobs("{id}")
	.abort(PrintJobAbortParameterSet
		.newBuilder()
		.withReason(null)
		.build())
	.buildRequest()
	.post();

```