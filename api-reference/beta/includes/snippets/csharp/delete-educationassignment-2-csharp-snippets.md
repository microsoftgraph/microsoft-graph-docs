---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Education.Classes["{educationClass-id}"].AssignmentCategories["{educationCategory-id}"]
	.Request()
	.DeleteAsync();

```