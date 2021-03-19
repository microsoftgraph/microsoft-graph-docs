---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean notifyTeam = true;

OffsetDateTime startDateTime = OffsetDateTimeSerializer.deserialize("10/08/2018 00:00:00");

OffsetDateTime endDateTime = OffsetDateTimeSerializer.deserialize("10/15/2018 00:00:00");

graphClient.teams("{teamId}").schedule()
	.share(ScheduleShareParameterSet
		.newBuilder()
		.withNotifyTeam(notifyTeam)
		.withStartDateTime(startDateTime)
		.withEndDateTime(endDateTime)
		.build())
	.buildRequest()
	.post();

```