---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessReview = await graphClient.AccessReviews["{accessReview-id}"]
	.Request()
	.GetAsync();

```