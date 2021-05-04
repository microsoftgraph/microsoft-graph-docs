---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

JsonElement sourceData = JsonParser.parseString("sourceData-value");

String seriesBy = "seriesBy-value";

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts("{name}")
	.setData(WorkbookChartSetDataParameterSet
		.newBuilder()
		.withSourceData(sourceData)
		.withSeriesBy(seriesBy)
		.build())
	.buildRequest()
	.post();

```