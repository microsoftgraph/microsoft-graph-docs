---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onPremisesAgentGroup = await graphClient.OnPremisesPublishingProfiles["provisioning"].AgentGroups["2d55ed41-1619-4848-92bb-0576d3038682"]
	.Request()
	.Expand("agents")
	.GetAsync();

```