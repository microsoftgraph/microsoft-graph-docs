---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var publishedResource = await graphClient.OnPremisesPublishingProfiles["provisioning"].PublishedResources["aed0b780-965f-4149-85c5-a8c73e58b67d"]
	.Request()
	.Expand("agentGroups")
	.GetAsync();

```