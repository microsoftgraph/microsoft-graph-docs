---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceRequestCollectionPage accessPackageResourceRequests = graphClient.identityGovernance().entitlementManagement().accessPackageResourceRequests()
	.buildRequest()
	.get();

```