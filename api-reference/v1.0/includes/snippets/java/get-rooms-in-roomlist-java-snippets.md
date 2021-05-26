---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RoomCollectionPage rooms = graphClient.places("bldg2@contoso.com").microsoft.graph.roomlist().rooms()
	.buildRequest()
	.get();

```