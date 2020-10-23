---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var messages = await graphClient.Me.Messages
	.Request()
	.Filter("MentionsPreview/IsMentioned eq true,")
	.Select("subject,sender,receivedDateTime,mentionsPreview")
	.GetAsync();

```