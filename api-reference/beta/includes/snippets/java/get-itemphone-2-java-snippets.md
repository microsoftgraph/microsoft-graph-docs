---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemPhoneCollectionPage phones = graphClient.me().profile().phones()
	.buildRequest()
	.get();

```