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
		Time = "2016-10-19T10:37:00Z"
	},
	Recurrence = null,
	Uid = "iCalUId-value",
	ReminderMinutesBeforeStart = 99,
	IsReminderOn = true
};

await graphClient.Me.Events["{id}"]
	.Request()
	.UpdateAsync(@event);

```