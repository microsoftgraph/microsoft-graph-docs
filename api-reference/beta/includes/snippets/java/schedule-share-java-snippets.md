---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean notifyTeam = true;

Calendar startDateTime = CalendarSerializer.deserialize("10/08/2018 00:00:00");

Calendar endDateTime = CalendarSerializer.deserialize("10/15/2018 00:00:00");

graphClient.teams("{teamId}").schedule()
	.share(notifyTeam,startDateTime,endDateTime)
	.buildRequest()
	.post();

```