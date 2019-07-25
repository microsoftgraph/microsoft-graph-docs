---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var posts = await graphClient.Groups["0d75b8dc-c42d-44dd-890a-751a99c0589f"].Threads["AAQkAD8EJUmcWwTJi06Cew=="].Posts
	.Request()
	.GetAsync();

```