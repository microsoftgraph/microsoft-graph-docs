---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignmentDefaults educationAssignmentDefaults = new EducationAssignmentDefaults();
educationAssignmentDefaults.addedStudentAction = EducationAddedStudentAction.ASSIGN_IF_OPEN;
educationAssignmentDefaults.addToCalendarAction = EducationAddToCalendarOptions.STUDENTS_AND_TEAM_OWNERS;
educationAssignmentDefaults.notificationChannelUrl = "https://graph.microsoft.com/beta/teams('id')/channels('id')";

graphClient.education().classes("{id}").assignmentDefaults()
	.buildRequest()
	.patch(educationAssignmentDefaults);

```