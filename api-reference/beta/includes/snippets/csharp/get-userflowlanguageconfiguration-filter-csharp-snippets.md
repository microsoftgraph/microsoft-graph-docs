---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var languages = await graphClient.Identity.B2cUserFlows["B2C_1_CustomerSignUp"].Languages
	.Request()
	.Filter("isEnabled eq true")
	.GetAsync();

```