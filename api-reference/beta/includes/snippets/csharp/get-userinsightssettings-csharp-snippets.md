---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userInsightsSettings = await graphClient.Me.Settings.ItemInsights
	.Request()
	.GetAsync();

```