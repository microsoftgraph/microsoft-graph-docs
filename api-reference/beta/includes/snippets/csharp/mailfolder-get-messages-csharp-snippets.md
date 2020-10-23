---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var messages = await graphClient.Me.MailFolders["AAMkAGVmMDEzM"].Messages
	.Request()
	.GetAsync();

```