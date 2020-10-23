---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookPivotTable workbookPivotTable = graphClient.me().drive().root().workbook().worksheets("{id}").pivotTables("{id}")
	.buildRequest()
	.get();

```