---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachment = new Attachment
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.type","#microsoft.graph.fileAttachment"}
	},
	Name = "name-value",
	ContentBytes = "base64-contentBytes-value"
};

await graphClient.Groups["{id}"].Threads["{id}"].Posts["{id}"].Attachments
	.Request()
	.AddAsync(attachment);

```