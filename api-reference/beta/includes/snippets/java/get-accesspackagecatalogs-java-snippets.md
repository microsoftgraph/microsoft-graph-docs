---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAccessPackageCatalogCollectionPage accessPackageCatalogs = graphClient.identityGovernance().entitlementManagement().accessPackageCatalogs()
	.buildRequest()
	.get();

```