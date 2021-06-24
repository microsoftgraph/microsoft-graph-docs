---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.PendingAccessReviewInstances["{accessReviewInstance-id}"]
	.AcceptRecommendations()
	.Request()
	.PostAsync();

```