---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var awards = await graphClient.Me.Profile.Awards
	.Request()
	.GetAsync();

```