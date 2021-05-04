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
			AdditionalData = new Dictionary<string, object>()
			{
				{"applicationInstance", "{\"@odata.type\":\"#microsoft.graph.identity\",\"displayName\":\"Calling Bot\",\"id\":\"3d913abb-aec0-4964-8fa6-3c6850c4f278\"}"}
			}
		},
		CountryCode = null,
		EndpointType = null,
		Region = null,
		LanguageId = null
	},
	Targets = new List<InvitationParticipantInfo>()
	{
		new InvitationParticipantInfo
		{
			Identity = new IdentitySet
			{
				AdditionalData = new Dictionary<string, object>()
				{
					{"phone", "{\"@odata.type\":\"#microsoft.graph.identity\",\"id\":\"+12345678901\"}"}
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