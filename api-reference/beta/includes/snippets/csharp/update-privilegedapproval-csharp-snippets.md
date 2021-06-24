---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var privilegedApproval = new PrivilegedApproval
{
	ApprovalState = ApprovalState.Pending,
	ApproverReason = "approverReason-value"
};

await graphClient.PrivilegedApproval["{privilegedApproval-id}"]
	.Request()
	.UpdateAsync(privilegedApproval);

```