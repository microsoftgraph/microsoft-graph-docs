---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentRequestFilterByCurrentUserCollectionPage filterByCurrentUser = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentRequests()
	.filterByCurrentUser(AccessPackageAssignmentRequestFilterByCurrentUserParameterSet
		.newBuilder()
		.withOn('target')
		.build())
	.buildRequest()
	.get();

```