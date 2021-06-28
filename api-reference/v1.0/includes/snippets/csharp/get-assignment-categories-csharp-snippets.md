---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var categories = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Categories
	.Request()
	.GetAsync();

```