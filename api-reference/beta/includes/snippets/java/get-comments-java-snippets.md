---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IWorkbookCommentCollectionPage comments = graphClient.drive().items("{id}").workbook().comments()
	.buildRequest()
	.get();

```