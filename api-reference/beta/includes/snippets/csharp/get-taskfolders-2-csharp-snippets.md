---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var taskFolders = await graphClient.Me.Outlook.TaskFolders
	.Request()
	.GetAsync();

```