---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationAssignment = new EducationAssignment
{
	DueDateTime = DateTimeOffset.Parse("2014-02-01T00:00:00Z"),
	DisplayName = "Midterm 1",
	Instructions = new EducationItemBody
	{
		ContentType = BodyType.Text,
		Content = "Read chapters 1 through 3"
	},
	Grading = new EducationAssignmentPointsGradeType
	{
		MaxPoints = 100f
	},
	AssignTo = new EducationAssignmentClassRecipient
	{
	},
	Status = EducationAssignmentStatus.Draft,
	AllowStudentsToAddResourcesToSubmission = true
};

await graphClient.Education.Classes["{educationClass-id}"].Assignments
	.Request()
	.AddAsync(educationAssignment);

```