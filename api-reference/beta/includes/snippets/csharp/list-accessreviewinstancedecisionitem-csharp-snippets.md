---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var decisions = await graphClient.IdentityGovernance.AccessReviews.Definitions["60860cdd-fb4d-4054-91ba-444404f3baa6"].Instances["14444cdb-6a18-4c08-ba2c-48c02f0a0138"].Decisions
	.Request()
	.Skip(0)
	.Top(100)
	.GetAsync();

```