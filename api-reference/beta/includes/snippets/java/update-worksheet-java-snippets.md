---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookWorksheet workbookWorksheet = new WorkbookWorksheet();
workbookWorksheet.position = 99;
workbookWorksheet.name = "name-value";
workbookWorksheet.visibility = "visibility-value";

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}")
	.buildRequest()
	.patch(workbookWorksheet);

```