---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachment = new Attachment
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.type","#Microsoft.OutlookServices.ItemAttachment"}
	},
	Name = "name-value",
	Item = "message or event entity"
};

await graphClient.Me.Events["{id}"].Attachments
	.Request()
	.AddAsync(attachment);

```