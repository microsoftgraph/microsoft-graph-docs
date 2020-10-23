---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var messages = await graphClient.Me.Messages
	.Request()
	.Header("Prefer","outlook.body-content-type=\"text\"")
	.Select("subject,body,bodyPreview,uniqueBody")
	.GetAsync();

```