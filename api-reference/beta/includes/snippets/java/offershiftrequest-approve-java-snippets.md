---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String message = "Approved!";

graphClient.teams("{teamId}").schedule().offerShiftRequests("{offerShiftRequestId}")
	.approve(ScheduleChangeRequestApproveParameterSet
		.newBuilder()
		.withMessage(message)
		.build())
	.buildRequest()
	.post();

```