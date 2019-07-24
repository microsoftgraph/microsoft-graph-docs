---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var privilegedApproval = new PrivilegedApproval
{
	UserId = "userId-value",
	RoleId = "roleId-value",
	ApprovalType = "approvalType-value",
	ApprovalState = ApprovalState.Pending,
	ApprovalDuration = "datetime-value"
};

await graphClient.PrivilegedApproval
	.Request()
	.AddAsync(privilegedApproval);

```