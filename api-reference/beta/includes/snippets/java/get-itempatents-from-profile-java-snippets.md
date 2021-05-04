---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemPatentCollectionPage patents = graphClient.me().profile().patents()
	.buildRequest()
	.get();

```