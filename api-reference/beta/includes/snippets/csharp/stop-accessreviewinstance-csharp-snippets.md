---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.IdentityGovernance.AccessReviews.Definitions["2b83cc42-09db-46f6-8c6e-16fec466a82d"].Instances["61a617dd-238f-4037-8fa5-d800e515f5bc"]
	.Stop()
	.Request()
	.PostAsync();

```