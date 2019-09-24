---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookRangeFormat workbookRangeFormat = new WorkbookRangeFormat();
workbookRangeFormat.columnWidth = 135;
workbookRangeFormat.horizontalAlignment = "Center";
workbookRangeFormat.verticalAlignment = "Center";
workbookRangeFormat.rowHeight = 49;
workbookRangeFormat.wrapText = false;

graphClient.me().drive().items("{id}").workbook().worksheets("Sheet1")
	.range("$B$1").format()
	.buildRequest()
	.patch(workbookRangeFormat);

```