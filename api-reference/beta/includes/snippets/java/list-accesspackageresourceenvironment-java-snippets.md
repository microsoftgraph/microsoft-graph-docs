---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAccessPackageResourceEnvironmentCollectionPage accessPackageResourceEnvironments = graphClient.identityGovernance().entitlementManagement().accessPackageResourceEnvironments()
	.buildRequest()
	.filter("originSystem eq 'SharePointOnline'")
	.get();

```