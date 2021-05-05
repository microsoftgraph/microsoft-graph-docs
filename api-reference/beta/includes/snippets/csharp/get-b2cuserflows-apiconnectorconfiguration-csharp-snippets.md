---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var b2cUserFlows = await graphClient.Identity.B2cUserFlows["{b2cIdentityUserFlow-id}"]
	.Request()
	.Expand("postAttributeCollection")
	.Select("ApiConnectorConfiguration")
	.GetAsync();

var apiConnectorConfiguration = b2cUserFlows.ApiConnectorConfiguration;

```