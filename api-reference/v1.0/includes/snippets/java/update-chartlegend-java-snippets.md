---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookChartLegend workbookChartLegend = new WorkbookChartLegend();
workbookChartLegend.visible = true;
workbookChartLegend.position = "position-value";
workbookChartLegend.overlay = true;

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts("{name}").legend()
	.buildRequest()
	.patch(workbookChartLegend);

```