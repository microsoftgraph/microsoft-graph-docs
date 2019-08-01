---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IRoomCollectionPage microsoft.graph.room = graphClient.places().microsoft.graph.room()
	.buildRequest()
	.get();

```