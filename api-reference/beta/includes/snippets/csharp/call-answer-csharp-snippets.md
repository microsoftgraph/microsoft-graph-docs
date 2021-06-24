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

var participantCapacity = 200;

await graphClient.Communications.Calls["{call-id}"]
	.Answer(callbackUri,mediaConfig,acceptedModalities,participantCapacity)
	.Request()
	.PostAsync();

```