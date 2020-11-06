---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var todoTask = new TodoTask
{
	Title = "A new task",
	LinkedResources = (ITodoTaskLinkedResourcesCollectionPage)new List<LinkedResource>()
	{
		new LinkedResource
		{
			WebUrl = "http://microsoft.com",
			ApplicationName = "Microsoft",
			DisplayName = "Microsoft"
		}
	}
};

await graphClient.Me.Todo.Lists["AQMkADAwATM0MDAAMS0yMDkyLWVjMzYtM"].Tasks
	.Request()
	.AddAsync(todoTask);

```