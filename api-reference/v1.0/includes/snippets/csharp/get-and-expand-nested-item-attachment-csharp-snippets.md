---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachment = await graphClient.Me.Messages["{message-id}"].Attachments["{attachment-id}"]
	.Request()
	.Expand("itemattachment/item")
	.GetAsync();

```