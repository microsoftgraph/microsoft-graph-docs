---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Teams["{team-id}"].Schedule.TimeOffRequests["{timeOffRequest-id}"]
	.Request()
	.DeleteAsync();

```