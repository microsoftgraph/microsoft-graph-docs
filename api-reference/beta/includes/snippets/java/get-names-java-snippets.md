---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPersonNameCollectionPage names = graphClient.me().profile().names()
	.buildRequest()
	.get();

```