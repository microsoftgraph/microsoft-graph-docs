---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var callbackUri = "callbackUri-value";

var mediaConfig = new AppHostedMediaConfig
{
	Blob = "<Media Session Configuration Blob>"
};

var acceptedModalities = new List<Modality>()
{
	Modality.Audio
};

await graphClient.Communications.Calls["{id}"]
	.Answer(callbackUri,mediaConfig,acceptedModalities,null)
	.Request()
	.PostAsync();

```