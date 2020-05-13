---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String message = "Approved!";

graphClient.teams("{teamId}").schedule().offerShiftRequests("{offerShiftRequestId}")
	.approve(message)
	.buildRequest()
	.post();

```