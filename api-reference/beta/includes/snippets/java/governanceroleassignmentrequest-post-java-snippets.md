---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GovernanceRoleAssignmentRequest governanceRoleAssignmentRequest = new GovernanceRoleAssignmentRequest();
governanceRoleAssignmentRequest.roleDefinitionId = "0e88fd18-50f5-4ee1-9104-01c3ed910065";
governanceRoleAssignmentRequest.resourceId = "e5e7d29d-5465-45ac-885f-4716a5ee74b5";
governanceRoleAssignmentRequest.subjectId = "74765671-9ca4-40d7-9e36-2f4a570608a6";
governanceRoleAssignmentRequest.assignmentState = "Eligible";
governanceRoleAssignmentRequest.type = "AdminExtend";
governanceRoleAssignmentRequest.reason = "extend role assignment";
GovernanceSchedule schedule = new GovernanceSchedule();
schedule.type = "Once";
schedule.startDateTime = CalendarSerializer.deserialize("2018-05-12T23:53:55.327Z");
schedule.endDateTime = CalendarSerializer.deserialize("2018-08-10T23:53:55.327Z");
governanceRoleAssignmentRequest.schedule = schedule;

graphClient.privilegedAccess("azureResources").roleAssignmentRequests()
	.buildRequest()
	.post(governanceRoleAssignmentRequest);

```