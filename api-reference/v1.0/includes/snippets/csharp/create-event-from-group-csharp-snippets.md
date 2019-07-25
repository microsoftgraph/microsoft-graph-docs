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
		DateTime = "2019-06-16T12:00:00",
		TimeZone = "Pacific Standard Time"
	},
	End = new DateTimeTimeZone
	{
		DateTime = "2019-06-16T14:00:00",
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

await graphClient.Groups["01d4ee64-15ce-491e-bad1-b91aa3223df4"].Events
	.Request()
	.AddAsync(@event);

```