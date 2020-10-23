---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationalActivities = await graphClient.Me.Profile.EducationalActivities
	.Request()
	.GetAsync();

```