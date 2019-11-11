---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var projectParticipation = await graphClient.Me.Profile.Projects["{id}"]
	.Request()
	.GetAsync();

```