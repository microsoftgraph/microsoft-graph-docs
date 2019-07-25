---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var taskGroups = await graphClient.Me.Outlook.TaskGroups
	.Request()
	.GetAsync();

```