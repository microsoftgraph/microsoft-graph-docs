---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<WorkbookSortField> fieldsList = new LinkedList<WorkbookSortField>();
WorkbookSortField fields = new WorkbookSortField();
fields.key = 99;
fields.sortOn = "sortOn-value";
fields.ascending = true;
fields.color = "color-value";
fields.dataOption = "dataOption-value";
WorkbookIcon icon = new WorkbookIcon();
icon.set = "set-value";
icon.index = 99;
fields.icon = icon;

fieldsList.add(fields);

Boolean matchCase = true;

Boolean hasHeaders = true;

String orientation = "orientation-value";

String method = "method-value";

graphClient.me().drive().items("{id}").workbook().names("{name}")
	.range().sort()
	.apply(WorkbookRangeSortApplyParameterSet
		.newBuilder()
		.withFields(fieldsList)
		.withMatchCase(matchCase)
		.withHasHeaders(hasHeaders)
		.withOrientation(orientation)
		.withMethod(method)
		.build())
	.buildRequest()
	.post();

```