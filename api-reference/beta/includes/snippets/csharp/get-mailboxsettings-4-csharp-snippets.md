---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var me = await graphClient.Me
	.Request()
	.Select("MailboxSettings")
	.GetAsync();

var userPurpose = me.MailboxSettings.UserPurpose;

```