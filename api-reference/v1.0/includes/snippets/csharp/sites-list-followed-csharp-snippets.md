---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var followedSites = await graphClient.Me.FollowedSites
	.Request()
	.GetAsync();

```