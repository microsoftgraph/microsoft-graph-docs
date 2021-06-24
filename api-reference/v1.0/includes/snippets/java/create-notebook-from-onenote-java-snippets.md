---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Notebook notebook = new Notebook();
notebook.displayName = "My Private notebook";

graphClient.me().onenote().notebooks()
	.buildRequest()
	.post(notebook);

```