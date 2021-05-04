---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var trending = await graphClient.Me.Insights.Trending
	.Request()
	.GetAsync();

```