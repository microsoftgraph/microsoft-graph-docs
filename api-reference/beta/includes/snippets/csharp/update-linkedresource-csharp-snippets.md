---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var linkedResource = new LinkedResource
{
	WebUrl = "http://microsoft.com",
	ApplicationName = "Microsoft",
	DisplayName = "Microsoft"
};

await graphClient.Me.Todo.Lists["{todoTaskList-id}"].Tasks["{todoTask-id}"].LinkedResources["{linkedResource-id}"]
	.Request()
	.UpdateAsync(linkedResource);

```