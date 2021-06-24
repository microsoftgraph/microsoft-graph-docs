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
		Time = DateTimeOffset.Parse("2016-10-19T10:37:00Z")
	},
	Recurrence = null,
	Uid = "iCalUId-value",
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