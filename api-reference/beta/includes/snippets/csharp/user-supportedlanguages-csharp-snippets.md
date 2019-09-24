---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var supportedLanguages = await graphClient.Me.Outlook
	.SupportedLanguages()
	.Request()
	.GetAsync();

```