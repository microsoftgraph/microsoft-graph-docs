---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageCatalogCollectionPage accessPackageCatalogs = graphClient.identityGovernance().entitlementManagement().accessPackageCatalogs()
	.buildRequest()
	.get();

```