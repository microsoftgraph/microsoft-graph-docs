---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachment = new ReferenceAttachment
{
	Name = "Personal pictures",
	SourceUrl = "https://contoso.com/personal/mario_contoso_net/Documents/Pics",
	ProviderType = ReferenceAttachmentProvider.OneDriveConsumer,
	Permission = ReferenceAttachmentPermission.Edit,
	IsFolder = true
};

await graphClient.Me.Events["AAMkAGE1M88AADUv0uAAAG="].Attachments
	.Request()
	.AddAsync(attachment);

```