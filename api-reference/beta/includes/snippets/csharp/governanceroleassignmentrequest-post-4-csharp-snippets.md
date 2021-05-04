---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var governanceRoleAssignmentRequest = new GovernanceRoleAssignmentRequestObject
{
	RoleDefinitionId = "65bb4622-61f5-4f25-9d75-d0e20cf92019",
	ResourceId = "e5e7d29d-5465-45ac-885f-4716a5ee74b5",
	SubjectId = "74765671-9ca4-40d7-9e36-2f4a570608a6",
	AssignmentState = "Eligible",
	Type = "AdminRemove"
};

await graphClient.PrivilegedAccess["{privilegedAccess-id}"].RoleAssignmentRequests
	.Request()
	.AddAsync(governanceRoleAssignmentRequest);

```