---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackage accessPackage = new AccessPackage();
accessPackage.displayName = "Access Package New Name";

graphClient.identityGovernance().entitlementManagement().accessPackages("{accessPackageId}")
	.buildRequest()
	.patch(accessPackage);

```