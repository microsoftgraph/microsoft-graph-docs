---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var participants = new List<InvitationParticipantInfo>()
{
	new InvitationParticipantInfo
	{
		ReplacesCallId = "a7ebfb2d-871e-419c-87af-27290b22e8db",
		Identity = new IdentitySet
		{
			User = new Identity
			{
				Id = "7e1b4346-85a6-4bdd-abe3-d11c5d420efe",
				AdditionalData = new Dictionary<string, object>()
				{
					{"identityProvider", "AAD"}
				}
			}
		}
	},
	new InvitationParticipantInfo
	{
		ReplacesCallId = "a7ebfb2d-871e-419c-87af-27290b22e8db",
		Identity = new IdentitySet
		{
			User = new Identity
			{
				Id = "1e126418-44a0-4a94-a6f8-0efe1ad71acb",
				AdditionalData = new Dictionary<string, object>()
				{
					{"identityProvider", "AAD"}
				}
			}
		}
	}
};

var clientContext = "f2fa86af-3c51-4bc2-8fc0-475452d9764f";

await graphClient.Communications.Calls["7531d31f-d10d-44de-802f-c569dbca451c"].Participants
	.Invite(participants,clientContext)
	.Request()
	.PostAsync();

```