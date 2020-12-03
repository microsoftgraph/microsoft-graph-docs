---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chatInfo = new ChatInfo
{
	ThreadId = "19:7ebda77322dd4505ac4dedb5b67df076@thread.tacv2"
};

var startDateTime = DateTimeOffset.Parse("2020-02-06T01:49:21.3524945+00:00");

var endDateTime = DateTimeOffset.Parse("2020-02-06T02:19:21.3524945+00:00");

var externalId = "7eb8263f-d0e0-4149-bb1c-1f0476083c56";

var participants = new MeetingParticipants
{
	Attendees = new List<MeetingParticipantInfo>()
	{
		new MeetingParticipantInfo
		{
			Identity = new IdentitySet
			{
				User = new Identity
				{
					Id = "1f35f2e6-9cab-44ad-8d5a-b74c14720000"
				}
			},
			Upn = "test1@contoso.com"
		}
	}
};

var subject = "Create a meeting with customId provided";

await graphClient.Me.OnlineMeetings
	.CreateOrGet(externalId,chatInfo,endDateTime,participants,startDateTime,subject)
	.Request()
	.PostAsync();

```