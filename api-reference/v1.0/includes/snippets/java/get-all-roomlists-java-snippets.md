---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RoomListCollectionPage roomlist = graphClient.places().microsoft.graph.roomlist()
	.buildRequest()
	.get();

```