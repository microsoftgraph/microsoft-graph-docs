---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookComment workbookComment = graphClient.drive().root().workbook().comments("{id}")
	.buildRequest()
	.get();

```