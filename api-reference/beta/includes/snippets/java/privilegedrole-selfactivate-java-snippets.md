---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String reason = "reason-value";

String duration = "duration-value";

String ticketNumber = "ticketNumber-value";

String ticketSystem = "ticketSystem-value";

graphClient.privilegedRoles("{id}")
	.selfActivate(reason,duration,ticketNumber,ticketSystem)
	.buildRequest()
	.post();

```