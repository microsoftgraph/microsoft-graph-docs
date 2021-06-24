---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignmentScheduleRequest unifiedRoleAssignmentScheduleRequest = new UnifiedRoleAssignmentScheduleRequest();
unifiedRoleAssignmentScheduleRequest.action = "String";
unifiedRoleAssignmentScheduleRequest.principalId = "String";
unifiedRoleAssignmentScheduleRequest.roleDefinitionId = "String";
unifiedRoleAssignmentScheduleRequest.directoryScopeId = "String";
unifiedRoleAssignmentScheduleRequest.appScopeId = "String";
unifiedRoleAssignmentScheduleRequest.isValidationOnly = false;
unifiedRoleAssignmentScheduleRequest.targetScheduleId = "String";
unifiedRoleAssignmentScheduleRequest.justification = "String";
RequestSchedule scheduleInfo = new RequestSchedule();
unifiedRoleAssignmentScheduleRequest.scheduleInfo = scheduleInfo;
TicketInfo ticketInfo = new TicketInfo();
unifiedRoleAssignmentScheduleRequest.ticketInfo = ticketInfo;

graphClient.roleManagement().directory().roleAssignmentScheduleRequests("{unifiedRoleAssignmentScheduleRequestsId}")
	.buildRequest()
	.patch(unifiedRoleAssignmentScheduleRequest);

```