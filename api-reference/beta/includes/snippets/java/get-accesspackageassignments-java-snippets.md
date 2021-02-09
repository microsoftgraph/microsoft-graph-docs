---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAccessPackageAssignmentCollectionPage accessPackageAssignments = graphClient.identityGovernance().entitlementManagement().accessPackageAssignments()
	.buildRequest()
	.get();

```