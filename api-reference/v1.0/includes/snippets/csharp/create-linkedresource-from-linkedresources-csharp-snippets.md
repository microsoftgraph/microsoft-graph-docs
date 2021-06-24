---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var linkedResource = new LinkedResource
{
	WebUrl = "https://microsoft.com",
	ApplicationName = "Microsoft",
	DisplayName = "Microsoft",
	ExternalId = "dk9cddce2-dce2-f9dd-e2dc-cdf9e2dccdf9"
};

await graphClient.Me.Todo.Lists["{todoTaskList-id}"].Tasks["{todoTask-id}"].LinkedResources
	.Request()
	.AddAsync(linkedResource);

```