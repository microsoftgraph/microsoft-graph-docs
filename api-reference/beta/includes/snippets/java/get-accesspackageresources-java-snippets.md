---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAccessPackageResourceCollectionPage accessPackageResources = graphClient.identityGovernance().entitlementManagement().accessPackageCatalogs("{id}").accessPackageResources()
	.buildRequest()
	.get();

```