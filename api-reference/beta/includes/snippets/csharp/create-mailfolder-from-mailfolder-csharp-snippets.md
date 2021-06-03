---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mailFolder = new MailFolder
{
	DisplayName = "displayName-value",
	IsHidden = true
};

await graphClient.Me.MailFolders["{mailFolder-id}"].ChildFolders
	.Request()
	.AddAsync(mailFolder);

```