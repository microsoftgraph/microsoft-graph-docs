---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SwapShiftsChangeRequestCollectionPage swapShiftsChangeRequests = graphClient.teams("{teamId}").schedule().swapShiftsChangeRequests()
	.buildRequest()
	.get();

```