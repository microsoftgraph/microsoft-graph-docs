---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var connectorGroup = await graphClient.OnPremisesPublishingProfiles["applicationProxy"].ConnectorGroups["{id}"]
	.Request()
	.GetAsync();

```