---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var adminConsentRequestPolicy = new AdminConsentRequestPolicy
{
	IsEnabled = true,
	NotifyReviewers = true,
	RemindersEnabled = true,
	RequestDurationInDays = 5,
	Reviewers = new List<AccessReviewReviewerScope>()
	{
		new AccessReviewReviewerScope
		{
			Query = "/users/b6879be8-fb87-4482-a72e-18445d2b5c54",
			QueryType = "MicrosoftGraph"
		},
		new AccessReviewReviewerScope
		{
			Query = "/users/b3427cc5-bf69-4dcd-95f7-ed1eb432f5e9",
			QueryType = "MicrosoftGraph"
		}
	}
};

await graphClient.Policies.AdminConsentRequestPolicy
	.Request()
	.PutAsync(adminConsentRequestPolicy);

```