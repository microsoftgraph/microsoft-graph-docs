---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessReviewPolicy = new AccessReviewPolicy
{
	IsGroupOwnerManagementEnabled = true
};

await graphClient.IdentityGovernance.AccessReviews.Policy
	.Request()
	.UpdateAsync(accessReviewPolicy);

```