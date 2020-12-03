---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Education.Classes["{id}"].Assignments["{id}"].Rubric.Reference
	.Request()
	.PutAsync("{id}");

```