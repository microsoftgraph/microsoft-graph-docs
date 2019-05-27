---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachment = new Attachment
{
	Name = "Personal pictures",
	SourceUrl = "https://contoso.com/personal/mario_contoso_net/Documents/Pics",
	ProviderType = "oneDriveConsumer",
	Permission = "Edit",
	IsFolder = "True"
};

await graphClient.Groups["c75831bdfad"].Threads["AAQkAGF97XEKhULw"].Posts["AAMkAGFcAAA"].Attachments
	.Request()
	.AddAsync(attachment);

```