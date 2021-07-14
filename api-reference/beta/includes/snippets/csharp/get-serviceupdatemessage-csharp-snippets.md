---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var serviceUpdateMessage = await graphClient.Admin.ServiceAnnouncement.Messages["{serviceUpdateMessage-id}"]
	.Request()
	.GetAsync();

```