---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userFlowLanguageConfiguration = new UserFlowLanguageConfiguration
{
	Id = "es-ES",
	IsEnabled = true
};

await graphClient.Identity.B2cUserFlows["{b2cIdentityUserFlow-id}"].Languages["{userFlowLanguageConfiguration-id}"]
	.Request()
	.PutAsync(userFlowLanguageConfiguration);

```