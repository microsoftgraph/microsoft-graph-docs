---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean across = true;

graphClient.me().drive().items("{id}").workbook().names("{name}")
	.range()
	.merge(WorkbookRangeMergeParameterSet
		.newBuilder()
		.withAcross(across)
		.build())
	.buildRequest()
	.post();

```