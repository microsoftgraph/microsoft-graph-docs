---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = await graphClient.Identity.B2cUserFlows["B2C_1_Customer"].Languages["en"].DefaultPages["idpselections"].Content
	.Request()
	.GetAsync();

```