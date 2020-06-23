---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var memberOf = await graphClient.OnPremisesPublishingProfiles["applicationProxy"].Connectors["{id}"].MemberOf
	.Request()
	.GetAsync();

```