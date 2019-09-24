---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var call = new Call
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.type","#microsoft.graph.call"}
	},
	CallbackUri = "https://bot.contoso.com/callback",
	Targets = new List<ParticipantInfo>()
	{
		new ParticipantInfo
		{
			AdditionalData = new Dictionary<string, object>()
			{
				{"@odata.type","#microsoft.graph.participantInfo"}
			},
			Identity = new IdentitySet
			{
				AdditionalData = new Dictionary<string, object>()
				{
					{"@odata.type","#microsoft.graph.identitySet"}
				},
				User = new Identity
				{
					AdditionalData = new Dictionary<string, object>()
					{
						{"@odata.type","#microsoft.graph.identity"}
					},
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
	MediaConfig = new MediaConfig
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"@odata.type","#microsoft.graph.serviceHostedMediaConfig"}
		}
	}
};

await graphClient.App.Calls
	.Request()
	.Header("Authorization","Bearer <Token>")
	.AddAsync(call);

```