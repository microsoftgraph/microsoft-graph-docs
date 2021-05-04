---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

NotebookGetrecentnotebooksCollectionPage getrecentnotebooks = graphClient.me().onenote().notebooks()
	.getrecentnotebooks(NotebookGetrecentnotebooksParameterSet
		.newBuilder()
		.withIncludePersonalNotebooks(true)
		.build())
	.buildRequest()
	.get();

```