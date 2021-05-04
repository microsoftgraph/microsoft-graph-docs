---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var connectors = await graphClient.OnPremisesPublishingProfiles["{onPremisesPublishingProfile-id}"].Connectors
	.Request()
	.GetAsync();

```