---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var b2xUserFlows = await graphClient.Identity.B2xUserFlows["{b2xIdentityUserFlow-id}"]
	.Request()
	.Expand("postAttributeCollection")
	.Select("ApiConnectorConfiguration")
	.GetAsync();

var apiConnectorConfiguration = b2xUserFlows.ApiConnectorConfiguration;

```