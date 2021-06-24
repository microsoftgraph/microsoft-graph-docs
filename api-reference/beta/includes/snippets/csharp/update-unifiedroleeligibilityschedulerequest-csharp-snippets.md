---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleEligibilityScheduleRequest = new UnifiedRoleEligibilityScheduleRequestObject
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

await graphClient.RoleManagement.Directory.RoleEligibilityScheduleRequests["{unifiedRoleEligibilityScheduleRequest-id}"]
	.Request()
	.UpdateAsync(unifiedRoleEligibilityScheduleRequest);

```