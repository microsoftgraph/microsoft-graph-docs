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

var mediaConfig = new AppHostedMediaConfig
{
	Blob = "<Media Session Configuration Blob>"
};

await graphClient.Communications.Calls["{call-id}"]
	.Answer(callbackUri,mediaConfig,acceptedModalities,null)
	.Request()
	.PostAsync();

```