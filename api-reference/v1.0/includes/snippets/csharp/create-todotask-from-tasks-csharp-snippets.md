---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var todoTask = new TodoTask
{
	Title = "A new task",
	LinkedResources = new TodoTaskLinkedResourcesCollectionPage()
	{
		new LinkedResource
		{
			WebUrl = "http://microsoft.com",
			ApplicationName = "Microsoft",
			DisplayName = "Microsoft"
		}
	}
};

await graphClient.Me.Todo.Lists["{todoTaskList-id}"].Tasks
	.Request()
	.AddAsync(todoTask);

```