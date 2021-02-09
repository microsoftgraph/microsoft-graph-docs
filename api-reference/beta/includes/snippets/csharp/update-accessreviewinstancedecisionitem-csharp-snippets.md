---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessReviewInstanceDecisionItem = new AccessReviewInstanceDecisionItem
{
	Decision = "Approve",
	Justification = "I trust this person"
};

await graphClient.Me.PendingAccessReviewInstances["70a68410-67f3-4d4c-b946-6989e050be19"].Decisions["654b34e7-b48f-4772-a2d4-08f1d0dd014c"]
	.Request()
	.UpdateAsync(accessReviewInstanceDecisionItem);

```