---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var all = true;

var clientContext = "clientContext-value";

await graphClient.App.Calls["{id}"]
	.CancelMediaProcessing(all,clientContext)
	.Request()
	.PostAsync();

```