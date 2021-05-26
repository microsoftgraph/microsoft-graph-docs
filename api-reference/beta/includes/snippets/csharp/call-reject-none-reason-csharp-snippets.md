---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var reason = RejectReason.None;

await graphClient.Communications.Calls["{call-id}"]
	.Reject(reason,null)
	.Request()
	.PostAsync();

```