---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

INotebookCollectionPage notebooks = graphClient.me().onenote().notebooks()
	.buildRequest()
	.get();

```