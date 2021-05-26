---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schedule = new Schedule
{
	Enabled = true,
	TimeZone = "America/Chicago"
};

await graphClient.Teams["{team-id}"].Schedule
	.Request()
	.PutAsync(schedule);

```