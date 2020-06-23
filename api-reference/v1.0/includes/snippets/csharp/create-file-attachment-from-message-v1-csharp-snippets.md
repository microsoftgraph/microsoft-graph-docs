---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachment = new FileAttachment
{
	Name = "smile",
	ContentBytes = Encoding.ASCII.GetBytes("R0lGODdhEAYEAA7")
};

await graphClient.Me.Messages["AAMkpsDRVK"].Attachments
	.Request()
	.AddAsync(attachment);

```