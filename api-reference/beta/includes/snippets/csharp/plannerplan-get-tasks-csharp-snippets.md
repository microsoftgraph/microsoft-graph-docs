---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tasks = await graphClient.Planner.Plans["xqQg5FS2LkCp935s-FIFm2QAFkHM"].Tasks
	.Request()
	.GetAsync();

```