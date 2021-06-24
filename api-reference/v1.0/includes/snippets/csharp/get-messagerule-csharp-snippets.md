---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var messageRule = await graphClient.Me.MailFolders["{mailFolder-id}"].MessageRules["{messageRule-id}"]
	.Request()
	.GetAsync();

```