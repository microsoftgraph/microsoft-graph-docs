---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var definitions = await graphClient.IdentityGovernance.AccessReviews.Definitions
	.Request()
	.Filter("contains(scope/microsoft.graph.accessReviewQueryScope/query, './members')")
	.GetAsync();

```