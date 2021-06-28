---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationOutcome = new EducationPointsOutcome
{
	Points = new EducationAssignmentPointsGrade
	{
		Points = 85f
	}
};

await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Submissions["{educationSubmission-id}"].Outcomes["{educationOutcome-id}"]
	.Request()
	.UpdateAsync(educationOutcome);

```