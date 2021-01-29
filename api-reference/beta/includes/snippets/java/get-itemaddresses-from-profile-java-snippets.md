---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IItemAddressCollectionPage addresses = graphClient.me().profile().addresses()
	.buildRequest()
	.get();

```