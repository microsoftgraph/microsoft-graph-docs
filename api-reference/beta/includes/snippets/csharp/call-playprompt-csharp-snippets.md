---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var clientContext = "d45324c1-fcb5-430a-902c-f20af696537c";

var prompts = new List<Prompt>()
{
	new MediaPrompt
	{
		MediaInfo = new MediaInfo
		{
			Uri = "https://cdn.contoso.com/beep.wav",
			ResourceId = "1D6DE2D4-CD51-4309-8DAA-70768651088E"
		}
	}
};

var loop = false;

await graphClient.Communications.Calls["{call-id}"]
	.PlayPrompt(prompts,loop,clientContext)
	.Request()
	.PostAsync();

```