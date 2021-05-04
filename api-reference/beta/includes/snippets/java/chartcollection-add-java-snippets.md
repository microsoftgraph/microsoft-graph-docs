---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String type = "ColumnStacked";

JsonElement sourceData = JsonParser.parseString("A1:B1");

String seriesBy = "Auto";

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts()
	.add(WorkbookChartAddParameterSet
		.newBuilder()
		.withType(type)
		.withSourceData(sourceData)
		.withSeriesBy(seriesBy)
		.build())
	.buildRequest()
	.post();

```