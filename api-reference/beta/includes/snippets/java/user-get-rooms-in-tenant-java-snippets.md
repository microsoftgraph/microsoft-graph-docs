---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEmailAddressCollectionPage findRooms = graphClient.me()
	.findRooms()
	.buildRequest()
	.get();

```