---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Room place = new Room();
place.nickname = "Conf Room";
place.building = "1";
place.label = "100";
place.capacity = "50";
place.isWheelchairAccessible = false;

graphClient.places("cf100@contoso.com")
	.buildRequest()
	.patch(place);

```