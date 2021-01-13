---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean notifyTeam = true;

Calendar startDateTime = CalendarSerializer.deserialize("10/8/2018 12:00:00 AM");

Calendar endDateTime = CalendarSerializer.deserialize("10/15/2018 12:00:00 AM");

graphClient.teams("{teamId}").schedule()
	.share(notifyTeam,startDateTime,endDateTime)
	.buildRequest()
	.post();

```