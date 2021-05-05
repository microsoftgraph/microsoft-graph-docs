---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookRangeFont workbookRangeFont = new WorkbookRangeFont();
workbookRangeFont.underline = "Single";
workbookRangeFont.color = "#FFFFFF";
workbookRangeFont.size = 26d;

graphClient.me().drive().items("{id}").workbook().worksheets("Sheet1")
	.range(WorkbookWorksheetRangeParameterSet
		.newBuilder()
		.withAddress("$C$1")
		.build()).format().font()
	.buildRequest()
	.patch(workbookRangeFont);

```