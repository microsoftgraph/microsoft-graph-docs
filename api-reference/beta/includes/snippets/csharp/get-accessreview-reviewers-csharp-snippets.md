---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var reviewers = await graphClient.AccessReviews["{accessReview-id}"].Reviewers
	.Request()
	.GetAsync();

```