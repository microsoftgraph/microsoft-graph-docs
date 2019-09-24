---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IWorkbookCommentReplyCollectionPage replies = graphClient.drive().root().workbook().comments("{id}").replies()
	.buildRequest()
	.get();

```