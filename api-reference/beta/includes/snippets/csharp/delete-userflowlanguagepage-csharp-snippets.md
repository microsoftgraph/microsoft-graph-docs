---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Identity.B2cUserFlows["{b2cIdentityUserFlow-id}"].Languages["{userFlowLanguageConfiguration-id}"].OverridesPages["{userFlowLanguagePage-id}"].Content
	.Request()
	.DeleteAsync();

```