---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String color = "color-value";

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts("{name}").format().fill()
	.setSolidColor(WorkbookChartFillSetSolidColorParameterSet
		.newBuilder()
		.withColor(color)
		.build())
	.buildRequest()
	.post();

```