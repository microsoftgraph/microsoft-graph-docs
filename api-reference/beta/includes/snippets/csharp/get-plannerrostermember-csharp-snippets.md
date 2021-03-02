---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerRosterMember = await graphClient.Planner.Rosters["523a9d5a-f9d5-45c1-929f-b8525393515c"].Members["5ba84f7a-aa11-4a51-a298-9f2c7ec6bb38"]
	.Request()
	.GetAsync();

```