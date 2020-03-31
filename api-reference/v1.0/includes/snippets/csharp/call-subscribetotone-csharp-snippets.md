---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var clientContext = "fd1c7836-4d84-4e24-b6aa-23188688cc54";

await graphClient.Communications.Calls["{id}"]
	.SubscribeToTone(clientContext)
	.Request()
	.PostAsync();

```