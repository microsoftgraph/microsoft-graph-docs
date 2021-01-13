---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackage accessPackage = new AccessPackage();
accessPackage.catalogId = "aa2f6514-3232-46e7-a08a-2411ad8d7128";
accessPackage.displayName = "sales reps";
accessPackage.description = "outside sales representatives";

graphClient.identityGovernance().entitlementManagement().accessPackages()
	.buildRequest()
	.post(accessPackage);

```