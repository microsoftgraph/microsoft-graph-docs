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
		Content = "Does late morning work for you?"
	},
	Start = new DateTimeTimeZone
	{
		DateTime = "2019-06-15T12:00:00",
		TimeZone = "Pacific Standard Time"
	},
	End = new DateTimeTimeZone
	{
		DateTime = "2019-06-15T14:00:00",
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
	}
};

await graphClient.Groups["{group-id}"].Events
	.Request()
	.AddAsync(@event);

```