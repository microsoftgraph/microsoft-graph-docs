---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onPremisesPublishingProfile = await graphClient.OnPremisesPublishingProfiles["{onPremisesPublishingProfile-id}"]
	.Request()
	.Expand("agentGroups")
	.GetAsync();

```