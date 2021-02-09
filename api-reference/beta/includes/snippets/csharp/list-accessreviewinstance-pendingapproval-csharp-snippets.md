---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var pendingAccessReviewInstances = await graphClient.Me.PendingAccessReviewInstances
	.Request()
	.Expand("definition")
	.Skip(0)
	.Top(100)
	.GetAsync();

```