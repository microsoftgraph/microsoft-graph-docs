---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var callbackUri = "callbackUri-value";

var mediaConfig = new MediaConfig
{
	Blob = "<media config blob>"
};

var acceptedModalities = new List<String>()
{
	"audio"
};

await graphClient.App.Calls["{id}"]
	.Answer(callbackUri,mediaConfig,acceptedModalities)
	.Request()
	.PostAsync();

```