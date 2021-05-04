---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookRangeFill workbookRangeFill = new WorkbookRangeFill();
workbookRangeFill.color = "#FF0000";

graphClient.me().drive().items("{id}").workbook().worksheets("Sheet1")
	.range(WorkbookWorksheetRangeParameterSet
		.newBuilder()
		.withAddress("$A$1")
		.build()).format().fill()
	.buildRequest()
	.patch(workbookRangeFill);

```