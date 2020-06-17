---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var connectorGroups = await graphClient.OnPremisesPublishingProfiles["applicationProxy"].ConnectorGroups
	.Request()
	.GetAsync();

```