---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookChartDataLabels workbookChartDataLabels = new WorkbookChartDataLabels();
workbookChartDataLabels.position = "position-value";
workbookChartDataLabels.showValue = true;
workbookChartDataLabels.showSeriesName = true;
workbookChartDataLabels.showCategoryName = true;
workbookChartDataLabels.showLegendKey = true;

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts("{name}").dataLabels()
	.buildRequest()
	.patch(workbookChartDataLabels);

```