---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var timeCard = await graphClient.Teams["{team-id}"].Schedule.TimeCards["{timeCard-id}"]
	.Request()
	.GetAsync();

```