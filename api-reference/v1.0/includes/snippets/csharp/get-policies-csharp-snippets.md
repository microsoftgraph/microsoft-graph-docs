---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var policies = await graphClient.Identity.ConditionalAccess.Policies
	.Request()
	.GetAsync();

```