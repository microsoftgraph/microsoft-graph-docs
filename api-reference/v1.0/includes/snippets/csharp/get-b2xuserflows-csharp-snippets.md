---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var b2xIdentityUserFlow = await graphClient.Identity.B2xUserFlows["{b2xIdentityUserFlow-id}"]
	.Request()
	.GetAsync();

```