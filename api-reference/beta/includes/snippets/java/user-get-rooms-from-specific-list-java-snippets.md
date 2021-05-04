---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserFindRoomsCollectionPage findRooms = graphClient.me()
	.findRooms(UserFindRoomsParameterSet
		.newBuilder()
		.withRoomList("Building2Rooms@contoso.onmicrosoft.com")
		.build())
	.buildRequest()
	.get();

```