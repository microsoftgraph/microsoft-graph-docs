---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookPivotTableCollectionPage pivotTables = graphClient.me().drive().root().workbook().worksheets("{id}").pivotTables()
	.buildRequest()
	.get();

```