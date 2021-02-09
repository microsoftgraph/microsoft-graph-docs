---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachment = new ItemAttachment
{
	Name = "name-value",
	Item = new Message
	{
	}
};

await graphClient.Me.Events["{id}"].Attachments
	.Request()
	.AddAsync(attachment);

```