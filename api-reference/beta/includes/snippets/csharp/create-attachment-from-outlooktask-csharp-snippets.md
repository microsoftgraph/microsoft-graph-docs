---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachment = new Attachment
{
	LastModifiedDateTime = DateTimeOffset.Parse("datetime-value"),
	Name = "name-value",
	ContentType = "contentType-value",
	Size = 99,
	IsInline = true
};

await graphClient.Users["{id}"].Outlook.Tasks["{id}"].Attachments
	.Request()
	.AddAsync(attachment);

```