---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationOutcome = new EducationFeedbackOutcome
{
	Feedback = new EducationFeedback
	{
		Text = new EducationItemBody
		{
			Content = "This is feedback for the assignment as a whole.",
			ContentType = BodyType.Text
		}
	}
};

await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Submissions["{educationSubmission-id}"].Outcomes["{educationOutcome-id}"]
	.Request()
	.UpdateAsync(educationOutcome);

```