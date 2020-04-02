---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var call = new Call
{
	CallbackUri = "https://bot.contoso.com/callback",
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
	MediaConfig = new ServiceHostedMediaConfig
	{
	}
};

await graphClient.App.Calls
	.Request()
	.Header("Authorization","Bearer <Token>")
	.AddAsync(call);

```