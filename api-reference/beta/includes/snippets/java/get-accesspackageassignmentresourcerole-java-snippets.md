---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentResourceRole accessPackageAssignmentResourceRole = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentResourceRoles("{id}")
	.buildRequest()
	.get();

```