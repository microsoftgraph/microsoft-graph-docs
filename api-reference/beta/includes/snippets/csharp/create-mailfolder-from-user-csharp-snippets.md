---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mailFolder = new MailFolder
{
	DisplayName = "displayName-value"
};

await graphClient.Me.MailFolders
	.Request()
	.AddAsync(mailFolder);

```