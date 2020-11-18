---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.IdentityGovernance.AccessReviews.Definitions["29f2d16e-9ca6-4052-bbfe-802c48981fd8"]
	.Request()
	.DeleteAsync();

```