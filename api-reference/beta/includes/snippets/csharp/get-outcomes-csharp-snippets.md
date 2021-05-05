---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outcomes = await graphClient.Education.Me.Assignments["{educationAssignment-id}"].Submissions["{educationSubmission-id}"].Outcomes
	.Request()
	.GetAsync();

```