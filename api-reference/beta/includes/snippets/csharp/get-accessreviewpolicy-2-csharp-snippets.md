---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessReviewPolicy = await graphClient.IdentityGovernance.AccessReviews.Policy
	.Request()
	.GetAsync();

```