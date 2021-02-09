---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SwapShiftsChangeRequest swapShiftsChangeRequest = graphClient.teams("{teamId}").schedule().swapShiftsChangeRequests("{swapShiftsChangeRequestId}")
	.buildRequest()
	.get();

```