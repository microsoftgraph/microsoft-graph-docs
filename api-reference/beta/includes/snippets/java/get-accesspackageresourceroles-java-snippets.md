---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAccessPackageResourceRoleCollectionPage accessPackageResourceRoles = graphClient.identityGovernance().entitlementManagement().accessPackageCatalogs("15d889df-3eb8-4e9b-bfb4-b1908849aec4").accessPackageResourceRoles()
	.buildRequest()
	.filter("(originSystem+eq+'AadGroup'+and+accessPackageResource/id+eq+'a35bef72-a8aa-4ca3-af30-f6b2ece7208f'),")
	.expand("accessPackageResource/id+eq+%27a35bef72-a8aa-4ca3-af30-f6b2ece7208f%27)")
	.get();

```