---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookRange workbookRange = graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}")
	.range(WorkbookWorksheetRangeParameterSet
		.newBuilder()
		.withAddress("A1:B2")
		.build())
	.buildRequest()
	.get();

```