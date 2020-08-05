---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var applications = await graphClient.OnPremisesPublishingProfiles["applicationProxy"].ConnectorGroups["{id}"].Applications
	.Request()
	.GetAsync();

```