---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var b2cUserFlows = await graphClient.Identity.B2cUserFlows["B2C_1_testuserflow"]
	.Request()
	.Expand("postAttributeCollection")
	.Select("ApiConnectorConfiguration")
	.GetAsync();

var apiConnectorConfiguration = b2cUserFlows.ApiConnectorConfiguration;

```