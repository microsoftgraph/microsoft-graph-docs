---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookCommentReplyCollectionPage replies = graphClient.drive().items("{id}").workbook().comments("{id}").replies()
	.buildRequest()
	.get();

```