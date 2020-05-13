---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachmentItem = new AttachmentItem
{
	AttachmentType = AttachmentType.File,
	Name = "flower",
	Size = 3483322
};

await graphClient.Me.Events["AAMkADU5CCmSAAA="].Attachments
	.CreateUploadSession(attachmentItem)
	.Request()
	.PostAsync();

```