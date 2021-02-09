---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IUserFindRoomsCollectionPage findRooms = graphClient.me()
	.findRooms("Building2Rooms@contoso.onmicrosoft.com")
	.buildRequest()
	.get();

```