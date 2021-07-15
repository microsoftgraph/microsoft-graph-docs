---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.catalogId = "beedadfe-01d5-4025-910b-84abb9369997";
accessPackageResourceRequest.requestType = "AdminAdd";
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.originId = "c6294667-7348-4f5a-be73-9d2c65f574f3";
accessPackageResource.originSystem = "AadGroup";
accessPackageResourceRequest.accessPackageResource = accessPackageResource;

graphClient.identityGovernance().entitlementManagement().accessPackageResourceRequests()
	.buildRequest()
	.post(accessPackageResourceRequest);

```