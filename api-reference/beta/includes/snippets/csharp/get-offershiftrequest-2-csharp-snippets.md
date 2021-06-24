---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var offerShiftRequests = await graphClient.Teams["{team-id}"].Schedule.OfferShiftRequests
	.Request()
	.GetAsync();

```