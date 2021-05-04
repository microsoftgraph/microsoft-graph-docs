---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Schedule schedule = new Schedule();
schedule.enabled = true;
schedule.timeZone = "America/Chicago";

graphClient.teams("{teamId}").schedule()
	.buildRequest()
	.put(schedule);

```