---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonNameCollectionPage names = graphClient.me().profile().names()
	.buildRequest()
	.get();

```