---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String calculationType = "calculationType-value";

graphClient.me().drive().items("{id}").workbook().application()
	.calculate(WorkbookApplicationCalculateParameterSet
		.newBuilder()
		.withCalculationType(calculationType)
		.build())
	.buildRequest()
	.post();

```