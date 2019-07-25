---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outlookTask = await graphClient.Me.Outlook.Tasks["AAMkADA1MHgwAAA="]
	.Request()
	.Header("Prefer","outlook.timezone=\"Pacific Standard Time\"")
	.GetAsync();

```