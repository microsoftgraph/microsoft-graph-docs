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

String method = "method-value";

graphClient.me().drive().items("{id}").workbook().tables("{id|name}").sort()
	.apply(WorkbookTableSortApplyParameterSet
		.newBuilder()
		.withFields(fieldsList)
		.withMatchCase(matchCase)
		.withMethod(method)
		.build())
	.buildRequest()
	.post();

```