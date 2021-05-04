---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessReview = new AccessReview
{
	DisplayName = "TestReview new name"
};

await graphClient.AccessReviews["{accessReview-id}"]
	.Request()
	.UpdateAsync(accessReview);

```