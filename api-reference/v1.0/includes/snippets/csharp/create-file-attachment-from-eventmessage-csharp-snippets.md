---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachment = new Attachment
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.type","microsoft.graph.fileAttachment"}
	},
	Name = "name-value",
	ContentType = "contentType-value",
	IsInline = false,
	ContentLocation = "contentLocation-value",
	ContentBytes = "base64-contentBytes-value"
};

await graphClient.Me.Messages["{id}"].Attachments
	.Request()
	.AddAsync(attachment);

```