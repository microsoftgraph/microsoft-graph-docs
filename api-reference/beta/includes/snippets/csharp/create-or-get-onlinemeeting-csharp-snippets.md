---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chatInfo = new ChatInfo
{
	ThreadId = "19%3A3b52398f3c524556894b776357c1dd79%40thread.skype"
};

var startDateTime = DateTimeOffset.Parse("2020-02-06T01:49:21.3524945+00:00");

var endDateTime = DateTimeOffset.Parse("2020-02-06T02:19:21.3524945+00:00");

var externalId = "7eb8263f-d0e0-4149-bb1c-1f0476083c56";

var participants = new MeetingParticipants
{
	Organizer = new MeetingParticipantInfo
	{
		Identity = new IdentitySet
		{
			User = new Identity
			{
				Id = "d4a060b5-a8fc-450c-837b-750b2c280000",
				TenantId = "72f988bf-86f1-41af-91ab-2d7cd0110000"
			}
		},
		Upn = "test1@contoso.com"
	},
	Attendees = new List<MeetingParticipantInfo>()
	{
		new MeetingParticipantInfo
		{
			Identity = new IdentitySet
			{
				User = new Identity
				{
					Id = "1f35f2e6-9cab-44ad-8d5a-b74c14720000",
					IdentityProvider = "MSA"
				}
			},
			Upn = "test@contoso.com"
		}
	}
};

var subject = "Create a meeting with customId provided";

await graphClient.Me.OnlineMeetings
	.CreateOrGet(externalId,chatInfo,endDateTime,participants,startDateTime,subject)
	.Request()
	.PostAsync();

```