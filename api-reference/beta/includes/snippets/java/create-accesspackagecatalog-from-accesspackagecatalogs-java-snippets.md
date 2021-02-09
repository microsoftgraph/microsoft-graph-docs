---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageCatalog accessPackageCatalog = new AccessPackageCatalog();
accessPackageCatalog.displayName = "sales";
accessPackageCatalog.description = "for employees working with sales and outside sales partners";
accessPackageCatalog.isExternallyVisible = true;

graphClient.identityGovernance().entitlementManagement().accessPackageCatalogs()
	.buildRequest()
	.post(accessPackageCatalog);

```