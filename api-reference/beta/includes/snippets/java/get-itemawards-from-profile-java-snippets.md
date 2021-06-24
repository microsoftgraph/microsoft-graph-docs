---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonAwardCollectionPage awards = graphClient.me().profile().awards()
	.buildRequest()
	.get();

```