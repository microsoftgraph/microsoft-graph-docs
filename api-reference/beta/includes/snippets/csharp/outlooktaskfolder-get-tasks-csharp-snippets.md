---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tasks = await graphClient.Me.Outlook.TaskFolders["{outlookTaskFolder-id}"].Tasks
	.Request()
	.GetAsync();

```