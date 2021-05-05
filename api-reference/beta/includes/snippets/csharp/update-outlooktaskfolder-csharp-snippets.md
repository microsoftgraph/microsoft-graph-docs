---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outlookTaskFolder = new OutlookTaskFolder
{
	Name = "Charity work"
};

await graphClient.Me.Outlook.TaskFolders["{outlookTaskFolder-id}"]
	.Request()
	.UpdateAsync(outlookTaskFolder);

```