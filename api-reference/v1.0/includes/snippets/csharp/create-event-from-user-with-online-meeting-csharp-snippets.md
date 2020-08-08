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
		Content = "Does noon work for you?"
	},
	Start = new DateTimeTimeZone
	{
		DateTime = "2017-04-15T12:00:00",
		TimeZone = "Pacific Standard Time"
	},
	End = new DateTimeTimeZone
	{
		DateTime = "2017-04-15T14:00:00",
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
				Address = "samanthab@contoso.onmicrosoft.com",
				Name = "Samantha Booth"
			},
			Type = AttendeeType.Required
		}
	},
	AllowNewTimeProposals = true,
	IsOnlineMeeting = true,
	OnlineMeetingProvider = OnlineMeetingProviderType.TeamsForBusiness
};

await graphClient.Me.Events
	.Request()
	.Header("Prefer","outlook.timezone=\"Pacific Standard Time\"")
	.AddAsync(@event);

```