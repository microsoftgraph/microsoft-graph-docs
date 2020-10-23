---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tasks = await graphClient.Planner.Buckets["gcrYAaAkgU2EQUvpkNNXLGQAGTtu"].Tasks
	.Request()
	.GetAsync();

```