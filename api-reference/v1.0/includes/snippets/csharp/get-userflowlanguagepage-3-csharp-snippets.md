---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = await graphClient.Identity.B2xUserFlows["{b2xIdentityUserFlow-id}"].Languages["{userFlowLanguageConfiguration-id}"].DefaultPages["{userFlowLanguagePage-id}"].Content
	.Request()
	.GetAsync();

```