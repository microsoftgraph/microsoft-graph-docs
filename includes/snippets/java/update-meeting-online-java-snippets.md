---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Event event = new Event();
event.isOnlineMeeting = true;
event.onlineMeetingProvider = OnlineMeetingProviderType.TEAMS_FOR_BUSINESS;

graphClient.me().events("AAMkADAGu0AABIGYDaAAA=")
	.buildRequest()
	.patch(event);

```