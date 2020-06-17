---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachment = new FileAttachment
{
	Name = "name-value",
	ContentType = "contentType-value",
	IsInline = false,
	ContentLocation = "contentLocation-value",
	ContentBytes = Encoding.ASCII.GetBytes("base64-contentBytes-value")
};

await graphClient.Me.Messages["{id}"].Attachments
	.Request()
	.AddAsync(attachment);

```