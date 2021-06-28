---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Rubric.Reference
	.Request()
	.PutAsync("ceb3863e-6912-4ea9-ac41-3c2bb7b6672d");

```