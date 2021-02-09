---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessReviewInstance = await graphClient.IdentityGovernance.AccessReviews.Definitions["60860cdd-fb4d-4054-91ba-444404f3baa6"].Instances["12490cdb-6a18-4c08-ba2c-44442f0a0138"]
	.Request()
	.GetAsync();

```