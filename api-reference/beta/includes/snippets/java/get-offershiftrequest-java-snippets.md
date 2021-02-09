---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IOfferShiftRequestCollectionPage offerShiftRequests = graphClient.teams("{teamId}").schedule().offerShiftRequests()
	.buildRequest()
	.get();

```