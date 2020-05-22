---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

boolean notifyTeam = true;

int startDateTime = 10/8/2018 12:00:00 AM;

int endDateTime = 10/15/2018 12:00:00 AM;

graphClient.teams("{teamId}").schedule()
	.share(notifyTeam,startDateTime,endDateTime)
	.buildRequest()
	.post();

```