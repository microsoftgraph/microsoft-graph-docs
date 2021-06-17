---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationCategory = await graphClient.Education.Classes["{educationClass-id}"].AssignmentCategories["{educationCategory-id}"]
	.Request()
	.GetAsync();

```