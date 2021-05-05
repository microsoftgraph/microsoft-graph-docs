---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outlookTaskFolder = new OutlookTaskFolder
{
	Name = "Cooking"
};

await graphClient.Me.Outlook.TaskGroups["{outlookTaskGroup-id}"].TaskFolders
	.Request()
	.AddAsync(outlookTaskFolder);

```