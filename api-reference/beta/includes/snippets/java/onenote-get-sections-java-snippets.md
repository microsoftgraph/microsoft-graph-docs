---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnenoteSectionCollectionPage sections = graphClient.me().onenote().sections()
	.buildRequest()
	.get();

```