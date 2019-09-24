---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outlookTaskFolder = new OutlookTaskFolder
{
	Name = "Volunteer"
};

await graphClient.Me.Outlook.TaskFolders
	.Request()
	.AddAsync(outlookTaskFolder);

```