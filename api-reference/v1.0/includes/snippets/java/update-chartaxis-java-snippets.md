---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookChartAxis workbookChartAxis = new WorkbookChartAxis();
Json majorUnit = new Json();
workbookChartAxis.majorUnit = majorUnit;
Json maximum = new Json();
workbookChartAxis.maximum = maximum;
Json minimum = new Json();
workbookChartAxis.minimum = minimum;

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts("{name}").axes().valueAxis()
	.buildRequest()
	.patch(workbookChartAxis);

```