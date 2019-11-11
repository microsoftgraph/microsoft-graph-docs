---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @event = new Event
{
	Subject = "Let's go for lunch",
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "Does next month work for you?"
	},
	Start = new DateTimeTimeZone
	{
		DateTime = "2019-03-10T12:00:00",
		TimeZone = "Pacific Standard Time"
	},
	End = new DateTimeTimeZone
	{
		DateTime = "2019-03-10T14:00:00",
		TimeZone = "Pacific Standard Time"
	},
	Location = new Location
	{
		DisplayName = "Harry's Bar"
	},
	Attendees = new List<Attendee>()
	{
		new Attendee
		{
			EmailAddress = new EmailAddress
			{
				Address = "adelev@contoso.onmicrosoft.com",
				Name = "Adele Vance"
			},
			Type = AttendeeType.Required
		}
	},
	IsOnlineMeeting = true,
	OnlineMeetingProvider = OnlineMeetingProviderType.TeamsForBusiness
};

await graphClient.Me.Calendars["AAMkAGViNDU8zAAAAAGtlAAA="].Events
	.Request()
	.AddAsync(@event);

```