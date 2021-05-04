---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Outlook.TaskFolders["{outlookTaskFolder-id}"]
	.Request()
	.DeleteAsync();

```