---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationAssignmentSettings = await graphClient.Education.Classes["{id}"].AssignmentSettings
	.Request()
	.GetAsync();

```