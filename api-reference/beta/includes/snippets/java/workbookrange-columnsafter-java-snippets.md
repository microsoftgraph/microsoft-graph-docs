---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.drive().root().workbook().worksheets("{id}")
	.range()
	.columnsAfter(null)
	.buildRequest()
	.post();

```