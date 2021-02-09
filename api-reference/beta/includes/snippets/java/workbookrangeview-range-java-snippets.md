---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookRange workbookRange = graphClient.drive().root().workbook().worksheets("{id}")
	.range("A1:Z10")
	.visibleView()
	.range()
	.buildRequest()
	.get();

```