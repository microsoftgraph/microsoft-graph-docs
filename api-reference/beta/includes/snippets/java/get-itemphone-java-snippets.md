---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IItemPhoneCollectionPage phones = graphClient.me().profile().phones()
	.buildRequest()
	.get();

```