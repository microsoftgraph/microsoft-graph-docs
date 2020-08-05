---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = await graphClient.Me.Messages["AAMkAGI1AAAoZCfHAAA="]
	.Request()
	.Header("Prefer","outlook.body-content-type=\"text\"")
	.Select("subject,body,bodyPreview,uniqueBody")
	.GetAsync();

```