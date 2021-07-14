---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessReviewInstanceDecisionItem = new AccessReviewInstanceDecisionItem
{
	Decision = "Approve",
	Justification = "Kathleen still needs access to the Marketing group as she works in the Marketing organization."
};

await graphClient.IdentityGovernance.AccessReviews.Definitions["{accessReviewScheduleDefinition-id}"].Instances["{accessReviewInstance-id}"].Decisions["{accessReviewInstanceDecisionItem-id}"]
	.Request()
	.UpdateAsync(accessReviewInstanceDecisionItem);

```