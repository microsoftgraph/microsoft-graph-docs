---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var todoTaskList = new TodoTaskList
{
	DisplayName = "Travel items"
};

await graphClient.Me.Todo.Lists
	.Request()
	.AddAsync(todoTaskList);

```