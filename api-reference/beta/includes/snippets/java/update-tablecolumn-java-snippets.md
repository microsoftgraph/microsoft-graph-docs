---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookTableColumn workbookTableColumn = new WorkbookTableColumn();
workbookTableColumn.name = "name-value";
workbookTableColumn.index = 99;
workbookTableColumn.values = JsonParser.parseString("\"values-value\"");

graphClient.me().drive().items("{id}").workbook().tables("{id|name}").columns("{id|name}")
	.buildRequest()
	.patch(workbookTableColumn);

```