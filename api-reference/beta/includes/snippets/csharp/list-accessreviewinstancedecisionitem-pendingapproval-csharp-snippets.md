---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var decisions = await graphClient.Me.PendingAccessReviewInstances["70a68410-67f3-4d4c-b946-6989e050be19"].Decisions
	.Request()
	.Skip(0)
	.Top(100)
	.GetAsync();

```