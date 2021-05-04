---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @event = new Event
{
	Location = new Location
	{
		DisplayName = "Conf Room 2"
	}
};

await graphClient.Groups["{group-id}"].Calendar.Events["{event-id}"]
	.Request()
	.UpdateAsync(@event);

```