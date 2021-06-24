---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mailFolder = new MailFolder
{
	DisplayName = "Clutter",
	IsHidden = true
};

await graphClient.Me.MailFolders
	.Request()
	.AddAsync(mailFolder);

```