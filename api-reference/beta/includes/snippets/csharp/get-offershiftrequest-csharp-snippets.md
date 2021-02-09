---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var offerShiftRequests = await graphClient.Teams["{teamId}"].Schedule.OfferShiftRequests
	.Request()
	.GetAsync();

```