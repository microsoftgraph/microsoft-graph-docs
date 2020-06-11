---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IRoomCollectionPage room = graphClient.places().microsoft.graph.room()
	.buildRequest()
	.get();

```