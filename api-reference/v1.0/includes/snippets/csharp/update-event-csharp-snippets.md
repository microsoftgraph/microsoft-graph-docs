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
	Recurrence = null,
	ICalUId = "iCalUId-value",
	ReminderMinutesBeforeStart = 99,
	IsOnlineMeeting = true,
	OnlineMeetingProvider = OnlineMeetingProviderType.TeamsForBusiness,
	IsReminderOn = true,
	HideAttendees = false,
	Categories = new List<String>()
	{
		"Red category"
	}
};

await graphClient.Me.Events["{event-id}"]
	.Request()
	.UpdateAsync(@event);

```