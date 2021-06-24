---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationAssignment = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"]
	.Request()
	.GetAsync();

```