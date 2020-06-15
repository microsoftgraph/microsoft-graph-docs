---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var analytics = await graphClient.Me.Analytics
	.Request()
	.Select("Settings")
	.GetAsync();

var settings = analytics.Settings;

```