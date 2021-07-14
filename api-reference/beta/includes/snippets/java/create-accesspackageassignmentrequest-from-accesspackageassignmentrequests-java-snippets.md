---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.requestType = "AdminRemove";
AccessPackageAssignment accessPackageAssignment = new AccessPackageAssignment();
accessPackageAssignment.id = "a6bb6942-3ae1-4259-9908-0133aaee9377";
accessPackageAssignmentRequest.accessPackageAssignment = accessPackageAssignment;

graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentRequests()
	.buildRequest()
	.post(accessPackageAssignmentRequest);

```