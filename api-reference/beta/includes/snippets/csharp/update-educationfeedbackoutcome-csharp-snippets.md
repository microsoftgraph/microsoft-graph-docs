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

await graphClient.Education.Me.Assignments["{id}"].Submissions["{id}"].Outcomes["{id}"]
	.Request()
	.UpdateAsync(educationOutcome);

```