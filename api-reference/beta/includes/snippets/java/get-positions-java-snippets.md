---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkPositionCollectionPage positions = graphClient.me().profile().positions()
	.buildRequest()
	.get();

```