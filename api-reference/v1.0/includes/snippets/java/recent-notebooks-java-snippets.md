---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

INotebookGetRecentNotebooksCollectionPage getRecentNotebooks = graphClient.me().onenote().notebooks()
	.getRecentNotebooks(true)
	.buildRequest()
	.get();

```