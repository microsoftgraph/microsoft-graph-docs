---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemPublicationCollectionPage publications = graphClient.me().profile().publications()
	.buildRequest()
	.get();

```