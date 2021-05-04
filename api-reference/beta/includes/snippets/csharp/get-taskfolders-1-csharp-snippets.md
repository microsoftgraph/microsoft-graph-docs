---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var taskFolders = await graphClient.Me.Outlook.TaskGroups["{outlookTaskGroup-id}"].TaskFolders
	.Request()
	.GetAsync();

```