---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageFilterByCurrentUserCollectionPage filterByCurrentUser = graphClient.identityGovernance().entitlementManagement().accessPackages()
	.filterByCurrentUser(AccessPackageFilterByCurrentUserParameterSet
		.newBuilder()
		.withOn('allowedRequestor')
		.build())
	.buildRequest()
	.get();

```