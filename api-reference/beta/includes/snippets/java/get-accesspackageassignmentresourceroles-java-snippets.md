---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAccessPackageAssignmentResourceRoleCollectionPage accessPackageAssignmentResourceRoles = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentResourceRoles()
	.buildRequest()
	.get();

```