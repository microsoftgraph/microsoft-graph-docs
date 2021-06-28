---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationAssignmentDefaults = new EducationAssignmentDefaults
{
	AddedStudentAction = EducationAddedStudentAction.AssignIfOpen,
	AddToCalendarAction = EducationAddToCalendarOptions.StudentsAndTeamOwners,
	NotificationChannelUrl = "https://graph.microsoft.com/beta/teams('id')/channels('id')"
};

await graphClient.Education.Classes["{educationClass-id}"].AssignmentDefaults
	.Request()
	.UpdateAsync(educationAssignmentDefaults);

```