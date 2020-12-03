---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tasks = await graphClient.Me.Todo.Lists["35e2-35e2-721a-e235-1a72e2351a7"].Tasks
	.Request()
	.GetAsync();

```