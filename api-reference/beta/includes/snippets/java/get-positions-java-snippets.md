---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IWorkPositionCollectionPage positions = graphClient.me().profile().positions()
	.buildRequest()
	.get();

```