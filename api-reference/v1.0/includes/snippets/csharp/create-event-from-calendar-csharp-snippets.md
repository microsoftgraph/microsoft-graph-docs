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
		Content = "Does mid month work for you?"
	},
	Start = new DateTimeTimeZone
	{
		DateTime = "2019-03-15T12:00:00",
		TimeZone = "Pacific Standard Time"
	},
	End = new DateTimeTimeZone
	{
		DateTime = "2019-03-15T14:00:00",
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
	TransactionId = "7E163156-7762-4BEB-A1C6-729EA81755A7"
};

await graphClient.Me.Calendars["AAMkAGViNDU7zAAAAAGtlAAA="].Events
	.Request()
	.AddAsync(@event);

```