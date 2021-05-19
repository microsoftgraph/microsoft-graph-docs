---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var overridesPages = await graphClient.Identity.B2xUserFlows["{b2xIdentityUserFlow-id}"].Languages["{userFlowLanguageConfiguration-id}"].OverridesPages
	.Request()
	.GetAsync();

```