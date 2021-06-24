---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

NotebookCollectionPage notebooks = graphClient.me().onenote().notebooks()
	.buildRequest()
	.get();

```