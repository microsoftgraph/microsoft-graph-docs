---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachments = await graphClient.Users["{user-id}"].Outlook.Tasks["{outlookTask-id}"].Attachments
	.Request()
	.GetAsync();

```