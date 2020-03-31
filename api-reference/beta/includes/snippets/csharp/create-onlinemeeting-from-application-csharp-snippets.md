---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onlineMeeting = new OnlineMeeting
{
	MeetingType = "meetNow",
	Participants = new MeetingParticipants
	{
		Organizer = new MeetingParticipantInfo
		{
			Identity = new IdentitySet
			{
				User = new Identity
				{
					Id = "550fae72-d251-43ec-868c-373732c2704f"
				}
			}
		}
	},
	Subject = "subject-value"
};

await graphClient.App.OnlineMeetings
	.Request()
	.AddAsync(onlineMeeting);

```