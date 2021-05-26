---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String message = "Sorry, you can't offer this shift.";

graphClient.teams("{teamId}").schedule().offerShiftRequests("{offerShiftRequestId}")
	.decline(ScheduleChangeRequestDeclineParameterSet
		.newBuilder()
		.withMessage(message)
		.build())
	.buildRequest()
	.post();

```