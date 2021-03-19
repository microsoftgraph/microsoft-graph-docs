---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

NotebookGetRecentNotebooksCollectionPage getRecentNotebooks = graphClient.me().onenote().notebooks()
	.getRecentNotebooks(NotebookGetRecentNotebooksParameterSet
		.newBuilder()
		.withIncludePersonalNotebooks(true)
		.build())
	.buildRequest()
	.get();

```