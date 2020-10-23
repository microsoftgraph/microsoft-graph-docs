---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IReminderCollectionPage reminderView = graphClient.me()
	.reminderView("2017-06-05T10:00:00.0000000","2017-06-11T11:00:00.0000000")
	.buildRequest()
	.get();

```