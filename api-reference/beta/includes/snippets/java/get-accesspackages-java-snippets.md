---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAccessPackageCollectionPage accessPackages = graphClient.identityGovernance().entitlementManagement().accessPackages()
	.buildRequest()
	.get();

```