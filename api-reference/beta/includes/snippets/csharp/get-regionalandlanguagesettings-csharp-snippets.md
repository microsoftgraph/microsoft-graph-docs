---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var regionalAndLanguageSettings = await graphClient.Me.Settings.RegionalAndLanguageSettings
	.Request()
	.GetAsync();

```