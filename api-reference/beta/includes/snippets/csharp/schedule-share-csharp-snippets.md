---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var notifyTeam = true;

var startDateTime = 10/8/2018 12:00:00 AM;

var endDateTime = 10/15/2018 12:00:00 AM;

await graphClient.Teams["{teamId}"].Schedule
	.Share(notifyTeam,startDateTime,endDateTime)
	.Request()
	.PostAsync();

```