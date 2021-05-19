---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleEligibilityScheduleRequest unifiedRoleEligibilityScheduleRequest = new UnifiedRoleEligibilityScheduleRequest();
unifiedRoleEligibilityScheduleRequest.action = "String";
unifiedRoleEligibilityScheduleRequest.principalId = "String";
unifiedRoleEligibilityScheduleRequest.roleDefinitionId = "String";
unifiedRoleEligibilityScheduleRequest.directoryScopeId = "String";
unifiedRoleEligibilityScheduleRequest.appScopeId = "String";
unifiedRoleEligibilityScheduleRequest.isValidationOnly = false;
unifiedRoleEligibilityScheduleRequest.targetScheduleId = "String";
unifiedRoleEligibilityScheduleRequest.justification = "String";
RequestSchedule scheduleInfo = new RequestSchedule();
unifiedRoleEligibilityScheduleRequest.scheduleInfo = scheduleInfo;
TicketInfo ticketInfo = new TicketInfo();
unifiedRoleEligibilityScheduleRequest.ticketInfo = ticketInfo;

graphClient.roleManagement().directory().roleEligibilityScheduleRequests("{unifiedRoleEligibilityScheduleRequestsId}")
	.buildRequest()
	.patch(unifiedRoleEligibilityScheduleRequest);

```