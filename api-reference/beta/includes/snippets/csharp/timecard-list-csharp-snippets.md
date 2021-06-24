---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var timeCards = await graphClient.Teams["{team-id}"].Schedule.TimeCards
	.Request()
	.Filter("state eq 'clockedOut'")
	.Top(2)
	.GetAsync();

```