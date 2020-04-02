---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var users = await graphClient.Users["AlexW@contoso.OnMicrosoft.com"]
	.Request()
	.Select( e => new {
			 e.MailboxSettings 
			 })
	.GetAsync();

var mailboxSettings = users.MailboxSettings;

```