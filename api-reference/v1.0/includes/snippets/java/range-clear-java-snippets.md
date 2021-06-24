---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String applyTo = "applyTo-value";

graphClient.me().drive().items("{id}").workbook().names("{name}")
	.range()
	.clear(WorkbookRangeClearParameterSet
		.newBuilder()
		.withApplyTo(applyTo)
		.build())
	.buildRequest()
	.post();

```