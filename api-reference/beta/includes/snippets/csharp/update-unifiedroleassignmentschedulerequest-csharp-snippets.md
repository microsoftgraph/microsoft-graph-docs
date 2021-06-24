---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleAssignmentScheduleRequest = new UnifiedRoleAssignmentScheduleRequestObject
{
	Action = "String",
	PrincipalId = "String",
	RoleDefinitionId = "String",
	DirectoryScopeId = "String",
	AppScopeId = "String",
	IsValidationOnly = false,
	TargetScheduleId = "String",
	Justification = "String",
	ScheduleInfo = new RequestSchedule
	{
	},
	TicketInfo = new TicketInfo
	{
	}
};

await graphClient.RoleManagement.Directory.RoleAssignmentScheduleRequests["{unifiedRoleAssignmentScheduleRequest-id}"]
	.Request()
	.UpdateAsync(unifiedRoleAssignmentScheduleRequest);

```