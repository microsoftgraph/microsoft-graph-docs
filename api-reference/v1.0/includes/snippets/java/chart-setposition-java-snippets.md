---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

JsonElement startCell = JsonParser.parseString("startCell-value");

JsonElement endCell = JsonParser.parseString("endCell-value");

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts("{name}")
	.setPosition(WorkbookChartSetPositionParameterSet
		.newBuilder()
		.withStartCell(startCell)
		.withEndCell(endCell)
		.build())
	.buildRequest()
	.post();

```