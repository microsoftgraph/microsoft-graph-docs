---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookChart workbookChart = new WorkbookChart();
workbookChart.id = "id-value";
workbookChart.height = 99;
workbookChart.left = 99;

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts()
	.buildRequest()
	.post(workbookChart);

```