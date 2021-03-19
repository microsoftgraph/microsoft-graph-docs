---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookCommentCollectionPage comments = graphClient.drive().items("{id}").workbook().comments()
	.buildRequest()
	.get();

```