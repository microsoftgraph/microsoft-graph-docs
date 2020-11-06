---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var users = await graphClient.Users
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Search("displayName:wa")
	.OrderBy("displayName ")
	.GetAsync();

```