---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var todoTask = new TodoTask
{
	DueDateTime = new DateTimeTimeZone
	{
		DateTime = "2020-07-25T16:00:00",
		TimeZone = "Eastern Standard Time"
	}
};

await graphClient.Me.Todo.Lists["{todoTaskList-id}"].Tasks["{todoTask-id}"]
	.Request()
	.UpdateAsync(todoTask);

```