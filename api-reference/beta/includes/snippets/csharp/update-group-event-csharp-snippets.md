---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @event = new Event
{
	OriginalStartTimeZone = "originalStartTimeZone-value",
	OriginalEndTimeZone = "originalEndTimeZone-value",
	ResponseStatus = new ResponseStatus
	{
		Response = ResponseType.None,
		Time = DateTimeOffset.Parse("datetime-value")
	},
	Uid = "iCalUId-value",
	ReminderMinutesBeforeStart = 99,
	IsReminderOn = true
};

await graphClient.Groups["{group-id}"].Events["{event-id}"]
	.Request()
	.UpdateAsync(@event);

```