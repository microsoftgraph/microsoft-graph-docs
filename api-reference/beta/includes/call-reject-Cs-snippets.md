---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var reason = RejectReason.None;

await graphClient.App.Calls["{id}"]
	.Reject(reason)
	.Request()
	.PostAsync();

```