---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onPremisesAgent = await graphClient.OnPremisesPublishingProfiles["{onPremisesPublishingProfile-id}"].Agents["{onPremisesAgent-id}"]
	.Request()
	.Expand("agentGroups")
	.GetAsync();

```