---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var messageIds = new List<String>()
{
	"MC172851",
	"MC167983"
};

await graphClient.Admin.ServiceAnnouncement.Messages
	.MarkRead(messageIds)
	.Request()
	.PostAsync();

```