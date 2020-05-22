---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = "Approved!";

await graphClient.Teams["{teamId}"].Schedule.OfferShiftRequests["{offerShiftRequestId}"]
	.Approve(message)
	.Request()
	.PostAsync();

```