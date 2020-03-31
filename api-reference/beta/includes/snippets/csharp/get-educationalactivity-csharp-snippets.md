---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationalActivity = await graphClient.Me.Profile.EducationalActivities["{id}"]
	.Request()
	.GetAsync();

```