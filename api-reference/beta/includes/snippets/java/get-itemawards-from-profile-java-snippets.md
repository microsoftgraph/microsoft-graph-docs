---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPersonAwardCollectionPage awards = graphClient.me().profile().awards()
	.buildRequest()
	.get();

```