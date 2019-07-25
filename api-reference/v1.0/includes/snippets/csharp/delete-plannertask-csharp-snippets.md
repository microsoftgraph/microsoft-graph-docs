---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Planner.Tasks["{id}"]
	.Request()
	.Header("If-Match","W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")
	.DeleteAsync();

```