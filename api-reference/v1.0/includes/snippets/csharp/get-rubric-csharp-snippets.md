---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationRubric = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Rubric
	.Request()
	.GetAsync();

```