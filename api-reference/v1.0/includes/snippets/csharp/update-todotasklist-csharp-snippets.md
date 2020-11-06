---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var todoTaskList = new TodoTaskList
{
	DisplayName = "Vacation Plan"
};

await graphClient.Me.Todo.Lists["AAMkADIyAAAhrbPWAAA="]
	.Request()
	.UpdateAsync(todoTaskList);

```