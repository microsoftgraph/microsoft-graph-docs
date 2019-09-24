---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var callbackUri = "callbackUri-value";

var mediaConfig = new MediaConfig
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.type","#microsoft.graph.appHostedMediaConfig"}
	},
	Blob = "<media config blob>"
};

var acceptedModalities = new List<Modality>()
{
	Modality.Audio
};

await graphClient.App.Calls["{id}"]
	.Answer(callbackUri,mediaConfig,acceptedModalities)
	.Request()
	.PostAsync();

```