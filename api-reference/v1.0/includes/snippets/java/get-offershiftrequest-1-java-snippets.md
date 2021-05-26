---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OfferShiftRequest offerShiftRequest = graphClient.teams("{teamId}").schedule().offerShiftRequests("{offerShiftRequestId}")
	.buildRequest()
	.get();

```