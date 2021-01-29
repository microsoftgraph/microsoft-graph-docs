---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAccessPackageAssignmentPolicyCollectionPage accessPackageAssignmentPolicies = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentPolicies()
	.buildRequest()
	.get();

```