---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var threads = await graphClient.Groups["{group-id}"].Threads
	.Request()
	.GetAsync();

```