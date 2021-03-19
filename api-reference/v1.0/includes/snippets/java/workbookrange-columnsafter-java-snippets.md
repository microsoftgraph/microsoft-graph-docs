---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookRange workbookRange = graphClient.me().drive().root().workbook().worksheets("{id}")
	.range()
	.columnsAfter(WorkbookRangeColumnsAfterParameterSet
		.newBuilder()
		.withCount(2)
		.build())
	.buildRequest()
	.get();

```