---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var languages = await graphClient.Identity.B2xUserFlows["{b2xIdentityUserFlow-id}"].Languages
	.Request()
	.GetAsync();

```