---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookRangeFont workbookRangeFont = new WorkbookRangeFont();
workbookRangeFont.italic = true;
workbookRangeFont.size = 26d;

graphClient.me().drive().items("{id}").workbook().worksheets("{sheet-id}")
	.range(WorkbookWorksheetRangeParameterSet
		.newBuilder()
		.withAddress("$B$1")
		.build()).format().font()
	.buildRequest()
	.patch(workbookRangeFont);

```