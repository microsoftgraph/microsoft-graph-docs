---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var call = new Call
{
	CallbackUri = "https://bot.contoso.com/callback",
	Source = new ParticipantInfo
	{
		Identity = new IdentitySet
		{
			Application = new Identity
			{
				DisplayName = "Calling Bot",
				Id = "2891555a-92ff-42e6-80fa-6e1300c6b5c6"
			}
		},
		Region = null,
		LanguageId = null
	},
	Targets = new List<InvitationParticipantInfo>()
	{
		new InvitationParticipantInfo
		{
			Identity = new IdentitySet
			{
				User = new Identity
				{
					DisplayName = "John",
					Id = "112f7296-5fa4-42ca-bae8-6a692b15d4b8"
				}
			}
		}
	},
	RequestedModalities = new List<Modality>()
	{
		Modality.Audio
	},
	MediaConfig = new AppHostedMediaConfig
	{
		Blob = "<Media Session Configuration>"
	}
};

await graphClient.Communications.Calls
	.Request()
	.AddAsync(call);

```