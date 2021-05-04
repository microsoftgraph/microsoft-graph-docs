---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String shift = "shift-value";

graphClient.me().drive().items("{id}").workbook().names("{name}")
	.range()
	.insert(WorkbookRangeInsertParameterSet
		.newBuilder()
		.withShift(shift)
		.build())
	.buildRequest()
	.post();

```