---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var decisions = await graphClient.Me.PendingAccessReviewInstances["{accessReviewInstance-id}"].Decisions
	.Request()
	.Skip(0)
	.Top(100)
	.GetAsync();

```