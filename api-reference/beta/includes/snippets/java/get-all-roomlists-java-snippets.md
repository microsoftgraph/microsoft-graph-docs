---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IRoomListCollectionPage roomlist = graphClient.places().microsoft.graph.roomlist()
	.buildRequest()
	.get();

```