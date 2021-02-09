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

await graphClient.Communications.Calls["57DAB8B1894C409AB240BD8BEAE78896"]
	.Answer(callbackUri,mediaConfig,acceptedModalities,null)
	.Request()
	.PostAsync();

```