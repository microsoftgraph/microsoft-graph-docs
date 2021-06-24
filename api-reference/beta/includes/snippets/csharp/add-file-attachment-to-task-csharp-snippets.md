---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachment = new FileAttachment
{
	Name = "menu.txt",
	ContentBytes = Encoding.ASCII.GetBytes("bWFjIGFuZCBjaGVlc2UgdG9kYXk=")
};

await graphClient.Me.Outlook.Tasks["{outlookTask-id}"].Attachments
	.Request()
	.AddAsync(attachment);

```