---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userFlowLanguageConfiguration = new UserFlowLanguageConfiguration
{
	IsEnabled = false
};

await graphClient.Identity.B2cUserFlows["B2C_1_CustomerSignUp"].Languages["es-ES"]
	.Request()
	.PutAsync(userFlowLanguageConfiguration);

```