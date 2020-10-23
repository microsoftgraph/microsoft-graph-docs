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
	}
};

var clientContext = "f2fa86af-3c51-4bc2-8fc0-475452d9764f";

await graphClient.Communications.Calls["ab6233a5-20b7-4c5e-bea2-ce56c9776429"].Participants
	.Invite(participants,clientContext)
	.Request()
	.PostAsync();

```