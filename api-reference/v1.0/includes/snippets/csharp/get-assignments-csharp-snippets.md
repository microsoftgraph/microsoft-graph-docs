---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var assignments = await graphClient.Education.Classes["{educationClass-id}"].Assignments
	.Request()
	.GetAsync();

```