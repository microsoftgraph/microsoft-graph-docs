---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Identity.B2cUserFlows["B2C_1_Customer"].Languages["en"].OverridesPages["phonefactor"].Content
	.Request()
	.DeleteAsync();

```