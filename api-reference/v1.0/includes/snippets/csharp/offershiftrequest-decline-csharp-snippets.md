---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = "Sorry, you can't offer this shift.";

await graphClient.Teams["{teamId}"].Schedule.OfferShiftRequests["{offerShiftRequestId}"]
	.Decline(message)
	.Request()
	.PostAsync();

```