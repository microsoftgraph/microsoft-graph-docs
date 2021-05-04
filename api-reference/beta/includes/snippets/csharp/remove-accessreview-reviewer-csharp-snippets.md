---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.AccessReviews["{accessReview-id}"].Reviewers["{accessReviewReviewer-id}"]
	.Request()
	.DeleteAsync();

```