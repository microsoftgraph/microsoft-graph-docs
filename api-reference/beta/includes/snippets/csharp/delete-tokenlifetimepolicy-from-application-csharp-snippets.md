---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Applications["{application-id}"].TokenLifetimePolicies["{tokenLifetimePolicy-id}"].Reference
	.Request()
	.DeleteAsync();

```