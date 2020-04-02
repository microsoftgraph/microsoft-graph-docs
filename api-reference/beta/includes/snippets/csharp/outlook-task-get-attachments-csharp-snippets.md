---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachments = await graphClient.Users["{id}"].Outlook.Tasks["{id}"].Attachments
	.Request()
	.GetAsync();

```