---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookRangeFont workbookRangeFont = new WorkbookRangeFont();
workbookRangeFont.bold = true;
workbookRangeFont.color = "color-value";
workbookRangeFont.italic = true;
workbookRangeFont.name = "name-value";
workbookRangeFont.size = 99d;
workbookRangeFont.underline = "underline-value";

graphClient.me().drive().items("{id}").workbook().names("{name}")
	.range().format().font()
	.buildRequest()
	.patch(workbookRangeFont);

```