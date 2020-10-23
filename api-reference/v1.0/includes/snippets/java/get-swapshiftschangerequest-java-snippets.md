---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISwapShiftsChangeRequestCollectionPage swapShiftsChangeRequests = graphClient.teams("{teamId}").schedule().swapShiftsChangeRequests()
	.buildRequest()
	.get();

```