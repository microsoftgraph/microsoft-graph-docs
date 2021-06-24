---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Identity.UserFlows["{identityUserFlow-id}"]
	.Request()
	.DeleteAsync();

```