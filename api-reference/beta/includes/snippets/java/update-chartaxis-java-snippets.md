---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookChartAxis workbookChartAxis = new WorkbookChartAxis();
JsonElement majorUnit = new JsonObject();
workbookChartAxis.majorUnit = majorUnit;
JsonElement maximum = new JsonObject();
workbookChartAxis.maximum = maximum;
JsonElement minimum = new JsonObject();
workbookChartAxis.minimum = minimum;

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts("{name}").axes().valueAxis()
	.buildRequest()
	.patch(workbookChartAxis);

```