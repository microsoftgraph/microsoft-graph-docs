---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentFilterByCurrentUserCollectionPage filterByCurrentUser = graphClient.identityGovernance().entitlementManagement().accessPackageAssignments()
	.filterByCurrentUser(AccessPackageAssignmentFilterByCurrentUserParameterSet
		.newBuilder()
		.withOn('target')
		.build())
	.buildRequest()
	.get();

```