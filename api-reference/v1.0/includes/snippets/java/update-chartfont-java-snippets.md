---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookChartFont workbookChartFont = new WorkbookChartFont();
workbookChartFont.bold = true;
workbookChartFont.color = "color-value";
workbookChartFont.italic = true;
workbookChartFont.name = "name-value";
workbookChartFont.size = 99;
workbookChartFont.underline = "underline-value";

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts("{name}").axes().valueAxis().format().font()
	.buildRequest()
	.patch(workbookChartFont);

```