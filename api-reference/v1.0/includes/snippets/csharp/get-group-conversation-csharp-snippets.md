---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversation = await graphClient.Groups["02bd9fd6-8f93-4758-87c3-1fb73740a315"].Conversations["AAQkAGI5MWY5ZmUyLTJiNzYtNDE0ZC04OWEwLWM3M2FjYmM3NzNlZgAQABuXO3guDWBMpyKF7LsVwfU="]
	.Request()
	.GetAsync();

```