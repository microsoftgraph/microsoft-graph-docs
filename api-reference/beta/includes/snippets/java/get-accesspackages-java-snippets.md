---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageCollectionPage accessPackages = graphClient.identityGovernance().entitlementManagement().accessPackages()
	.buildRequest()
	.get();

```