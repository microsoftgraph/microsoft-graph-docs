---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Approval approval = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentApprovals("abd306ef-f7b2-4a10-9fd1-493454322489")
	.buildRequest()
	.get();

```