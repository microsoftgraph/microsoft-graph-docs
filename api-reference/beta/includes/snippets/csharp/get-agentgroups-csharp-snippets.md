---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var agentGroups = await graphClient.OnPremisesPublishingProfiles["provisioning"].AgentGroups
	.Request()
	.Expand("publishedResources")
	.GetAsync();

```