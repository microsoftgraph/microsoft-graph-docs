---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAccessPackageAssignmentRequestCollectionPage accessPackageAssignmentRequests = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentRequests()
	.buildRequest()
	.get();

```