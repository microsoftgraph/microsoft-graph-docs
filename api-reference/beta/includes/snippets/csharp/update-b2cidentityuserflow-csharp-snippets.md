---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var b2cIdentityUserFlow = new B2cIdentityUserFlow
{
	IsLanguageCustomizationEnabled = true,
	DefaultLanguageTag = "en"
};

await graphClient.Identity.B2cUserFlows["{b2cIdentityUserFlow-id}"]
	.Request()
	.UpdateAsync(b2cIdentityUserFlow);

```