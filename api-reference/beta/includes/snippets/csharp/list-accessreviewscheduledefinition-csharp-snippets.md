---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var definitions = await graphClient.IdentityGovernance.AccessReviews.Definitions
	.Request()
	.Skip(0)
	.Top(100)
	.GetAsync();

```