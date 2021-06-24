---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachments = await graphClient.Me.Events["{event-id}"].Attachments
	.Request()
	.GetAsync();

```