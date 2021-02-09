---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var instances = await graphClient.IdentityGovernance.AccessReviews.Definitions["60860cdd-fb4d-4054-91ba-f75e04f34444"].Instances
	.Request()
	.Skip(0)
	.Top(100)
	.GetAsync();

```