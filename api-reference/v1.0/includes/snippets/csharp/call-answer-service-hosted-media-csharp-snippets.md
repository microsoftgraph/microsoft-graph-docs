---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var callbackUri = "https://bot.contoso.com/api/calls";

var acceptedModalities = new List<Modality>()
{
	Modality.Audio
};

var mediaConfig = new ServiceHostedMediaConfig
{
	PreFetchMedia = new List<MediaInfo>()
	{
		new MediaInfo
		{
			Uri = "https://cdn.contoso.com/beep.wav",
			ResourceId = "1D6DE2D4-CD51-4309-8DAA-70768651088E"
		},
		new MediaInfo
		{
			Uri = "https://cdn.contoso.com/cool.wav",
			ResourceId = "1D6DE2D4-CD51-4309-8DAA-70768651088F"
		}
	}
};

await graphClient.Communications.Calls["{call-id}"]
	.Answer(callbackUri,mediaConfig,acceptedModalities,null)
	.Request()
	.PostAsync();

```