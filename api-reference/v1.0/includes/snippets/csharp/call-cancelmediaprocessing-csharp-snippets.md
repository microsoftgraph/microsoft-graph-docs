---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var clientContext = "clientContext-value";

await graphClient.Communications.Calls["{id}"]
	.CancelMediaProcessing(clientContext)
	.Request()
	.PostAsync();

```