---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var filterByCurrentUser = await graphClient.IdentityGovernance.AccessReviews.Definitions["{accessReviewScheduleDefinition-id}"].Instances
	.FilterByCurrentUser(AccessReviewInstanceFilterByCurrentUserOptions.Reviewer)
	.Request()
	.GetAsync();

```