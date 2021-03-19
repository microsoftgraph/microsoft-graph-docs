---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedApproval privilegedApproval = new PrivilegedApproval();
privilegedApproval.approvalState = ApprovalState.PENDING;
privilegedApproval.approverReason = "approverReason-value";

graphClient.privilegedApproval("{requestId}")
	.buildRequest()
	.patch(privilegedApproval);

```