---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @event = await graphClient.Me.Events["AAMkAGI1AAAoZDOFAAA="]
	.Request()
	.Header("Prefer","outlook.body-content-type=\"text\"")
	.Select("subject,body,bodyPreview")
	.GetAsync();

```