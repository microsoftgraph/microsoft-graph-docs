---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemAddressCollectionPage addresses = graphClient.me().profile().addresses()
	.buildRequest()
	.get();

```