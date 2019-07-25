---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var messageRules = await graphClient.Me.MailFolders["inbox"].MessageRules
	.Request()
	.GetAsync();

```