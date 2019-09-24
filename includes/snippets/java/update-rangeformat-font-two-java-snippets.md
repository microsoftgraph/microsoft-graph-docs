---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookRangeFont workbookRangeFont = new WorkbookRangeFont();
workbookRangeFont.italic = true;
workbookRangeFont.size = 26;

graphClient.me().drive().items("{id}").workbook().worksheets("Sheet1")
	.range("$B$1").format().font()
	.buildRequest()
	.patch(workbookRangeFont);

```