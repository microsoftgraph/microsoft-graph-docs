---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessReviewHistoryDefinition = new AccessReviewHistoryDefinition
{
	DisplayName = "Last quarter's group reviews April 2021",
	Decisions = new List<AccessReviewHistoryDecisionFilter>()
	{
		AccessReviewHistoryDecisionFilter.Approve,
		AccessReviewHistoryDecisionFilter.Deny,
		AccessReviewHistoryDecisionFilter.DontKnow,
		AccessReviewHistoryDecisionFilter.NotReviewed,
		AccessReviewHistoryDecisionFilter.NotNotified
	},
	ReviewHistoryPeriodStartDateTime = DateTimeOffset.Parse("2021-01-01T00:00:00Z"),
	ReviewHistoryPeriodEndDateTime = DateTimeOffset.Parse("2021-04-05T00:00:00Z"),
	Scopes = new List<AccessReviewScope>()
	{
		new AccessReviewQueryScope
		{
			QueryType = "MicrosoftGraph",
			Query = "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'accessPackageAssignments')",
			QueryRoot = null
		},
		new AccessReviewQueryScope
		{
			QueryType = "MicrosoftGraph",
			Query = "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, '/groups')",
			QueryRoot = null
		}
	}
};

await graphClient.IdentityGovernance.AccessReviews.HistoryDefinitions
	.Request()
	.AddAsync(accessReviewHistoryDefinition);

```