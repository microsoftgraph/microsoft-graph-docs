---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentRequest accessPackageAssignmentRequest = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentRequests("{id}")
	.buildRequest()
	.get();

```