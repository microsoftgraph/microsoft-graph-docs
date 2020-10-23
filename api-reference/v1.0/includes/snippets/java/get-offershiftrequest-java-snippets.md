---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Authorization", "Bearer {token}"));

OfferShiftRequest offerShiftRequest = new OfferShiftRequest();
offerShiftRequest.senderShiftId = "SHFT_f7e484ed-fdd6-421c-92d9-0bc9e62e2c29";
offerShiftRequest.senderMessage = "Having a family emergency, could you take this shift for me?";
offerShiftRequest.recipientUserId = "fe278b61-21ac-4872-8b41-1962bbb98e3c";

graphClient.teams("788b75d2-a911-48c0-a5e2-dc98480457e3").schedule().offerShiftRequests()
	.buildRequest( requestOptions )
	.post(offerShiftRequest);

```