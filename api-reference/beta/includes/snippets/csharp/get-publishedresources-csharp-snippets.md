---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var publishedResources = await graphClient.OnPremisesPublishingProfiles["{publishingType}"].PublishedResources
	.Request()
	.Expand("agentGroups")
	.GetAsync();

```