---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var connector = await graphClient.OnPremisesPublishingProfiles["applicationProxy"].Connectors["{id}"]
	.Request()
	.GetAsync();

```