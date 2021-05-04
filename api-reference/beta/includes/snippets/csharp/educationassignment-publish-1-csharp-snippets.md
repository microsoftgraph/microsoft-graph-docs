---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @string = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"]
	.GetResourcesFolderUrl()
	.Request()
	.GetAsync();

```