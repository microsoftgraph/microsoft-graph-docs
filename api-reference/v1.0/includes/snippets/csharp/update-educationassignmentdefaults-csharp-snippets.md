---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationAssignmentDefaults = new EducationAssignmentDefaults
{
	AddedStudentAction = EducationAddedStudentAction.AssignIfOpen,
	NotificationChannelUrl = "https://graph.microsoft.com/beta/teams('acdefc6b-2dc6-4e71-b1e9-6d9810ab1793')/channels('3da03fc4-8eac-4459-84fb-1422dc01f65e')"
};

await graphClient.Education.Classes["{educationClass-id}"].AssignmentDefaults
	.Request()
	.UpdateAsync(educationAssignmentDefaults);

```