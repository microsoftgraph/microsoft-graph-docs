---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IRecentNotebookCollectionPage getRecentNotebooks = graphClient.me().onenote().notebooks()
	.getRecentNotebooks(true)
	.buildRequest()
	.get();

```