---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var agents = await graphClient.OnPremisesPublishingProfiles["provisioning"].Agents
	.Request()
	.Expand("agentGroups")
	.GetAsync();

```