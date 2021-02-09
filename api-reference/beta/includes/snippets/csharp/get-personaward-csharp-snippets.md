---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personAward = await graphClient.Me.Profile.Awards["{id}"]
	.Request()
	.GetAsync();

```