---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mailFolder = new MailSearchFolder
{
	FilterQuery = "contains(subject, 'Analytics')"
};

await graphClient.Me.MailFolders["{mailFolder-id}"]
	.Request()
	.UpdateAsync(mailFolder);

```