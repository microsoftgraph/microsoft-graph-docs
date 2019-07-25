---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var clientContext = "clientContext-value";

await graphClient.App.Calls["{id}"]
	.Mute(clientContext)
	.Request()
	.PostAsync();

```