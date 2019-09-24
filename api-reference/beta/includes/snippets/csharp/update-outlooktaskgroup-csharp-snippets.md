---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outlookTaskGroup = new OutlookTaskGroup
{
	Name = "Personal Tasks"
};

await graphClient.Me.Outlook.TaskGroups["AAMkADIyAAAhrbe-AAA="]
	.Request()
	.UpdateAsync(outlookTaskGroup);

```