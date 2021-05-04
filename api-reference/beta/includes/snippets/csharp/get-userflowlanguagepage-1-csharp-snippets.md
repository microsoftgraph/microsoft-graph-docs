---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var defaultPages = await graphClient.Identity.B2cUserFlows["{b2cIdentityUserFlow-id}"].Languages["{userFlowLanguageConfiguration-id}"].DefaultPages
	.Request()
	.GetAsync();

```