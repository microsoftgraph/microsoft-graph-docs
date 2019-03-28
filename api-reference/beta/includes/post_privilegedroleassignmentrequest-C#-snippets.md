
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of GovernanceSchedule
var schedule = new GovernanceSchedule
{
	StartDateTime = "2018-02-08T02:35:17.903Z",
};

//create instance of PrivilegedRoleAssignmentRequest
var privilegedRoleAssignmentRequests = new PrivilegedRoleAssignmentRequest
{
	Duration = "2",
	Reason = "Activate the role for business purpose",
	TicketNumber = "234",
	TicketSystem = "system",
	Schedule = schedule,
	EvaluateOnly = false,
	Type = "UserAdd",
	AssignmentState = "Active",
	RoleId = "88d8e3e3-8f55-4a1e-953a-9b9898b8876b",
};

await graphClient.PrivilegedRoleAssignmentRequests
	.Request()
	.AddAsync(privilegedRoleAssignmentRequests);

```