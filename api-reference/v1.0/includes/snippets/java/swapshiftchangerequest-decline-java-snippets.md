---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String message = "message-value";

graphClient.teams("{teamId}").schedule().swapShiftsChangeRequests("{swapShiftChangeRequestId}")
	.decline(ScheduleChangeRequestDeclineParameterSet
		.newBuilder()
		.withMessage(message)
		.build())
	.buildRequest()
	.post();

```