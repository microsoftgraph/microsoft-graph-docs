---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookRangeFont workbookRangeFont = new WorkbookRangeFont();
workbookRangeFont.underline = "Single";
workbookRangeFont.color = "#FFFFFF";
workbookRangeFont.size = 26;

graphClient.me().drive().items("{id}").workbook().worksheets("Sheet1")
	.range("$C$1").format().font()
	.buildRequest()
	.patch(workbookRangeFont);

```