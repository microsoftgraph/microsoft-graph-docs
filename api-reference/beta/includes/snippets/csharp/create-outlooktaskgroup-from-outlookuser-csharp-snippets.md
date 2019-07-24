---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outlookTaskGroup = new OutlookTaskGroup
{
	Name = "Leisure tasks"
};

await graphClient.Me.Outlook.TaskGroups
	.Request()
	.AddAsync(outlookTaskGroup);

```