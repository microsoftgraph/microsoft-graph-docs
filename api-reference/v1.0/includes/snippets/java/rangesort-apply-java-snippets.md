---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

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

boolean matchCase = true;

boolean hasHeaders = true;

String orientation = "orientation-value";

String method = "method-value";

graphClient.me().drive().items("{id}").workbook().names("{name}")
	.range().sort()
	.apply(fieldsList,matchCase,hasHeaders,orientation,method)
	.buildRequest()
	.post();

```