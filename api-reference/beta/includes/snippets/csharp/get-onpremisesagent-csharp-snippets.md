---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onPremisesAgent = await graphClient.OnPremisesPublishingProfiles["provisioning"].Agents["1234b780-965f-4149-85c5-a8c73e58b67d"]
	.Request()
	.Expand("agentGroups")
	.GetAsync();

```