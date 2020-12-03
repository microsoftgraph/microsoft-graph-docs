---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IUserFindRoomListsCollectionPage findRoomLists = graphClient.me()
	.findRoomLists()
	.buildRequest()
	.get();

```