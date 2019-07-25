---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mailFolder = await graphClient.Me.MailFolders["AAMkAGVmMDEzM"]
	.Request()
	.GetAsync();

```