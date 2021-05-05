---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserReminderViewCollectionPage reminderView = graphClient.me()
	.reminderView(UserReminderViewParameterSet
		.newBuilder()
		.withStartDateTime("2017-06-05T10:00:00.0000000")
		.withEndDateTime("2017-06-11T11:00:00.0000000")
		.build())
	.buildRequest()
	.get();

```