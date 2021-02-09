---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
AccessPackageResourceRole accessPackageResourceRole = new AccessPackageResourceRole();
accessPackageResourceRole.originId = "Member_b31fe1f1-3651-488f-bd9a-1711887fd4ca";
accessPackageResourceRole.displayName = "Member";
accessPackageResourceRole.originSystem = "AadGroup";
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.id = "1d08498d-72a1-403f-8511-6b1f875746a0";
accessPackageResource.resourceType = "O365 Group";
accessPackageResource.originId = "b31fe1f1-3651-488f-bd9a-1711887fd4ca";
accessPackageResource.originSystem = "AadGroup";
accessPackageResourceRole.accessPackageResource = accessPackageResource;
accessPackageResourceRoleScope.accessPackageResourceRole = accessPackageResourceRole;
AccessPackageResourceScope accessPackageResourceScope = new AccessPackageResourceScope();
accessPackageResourceScope.originId = "b31fe1f1-3651-488f-bd9a-1711887fd4ca";
accessPackageResourceScope.originSystem = "AadGroup";
accessPackageResourceRoleScope.accessPackageResourceScope = accessPackageResourceScope;

graphClient.identityGovernance().entitlementManagement().accessPackages("{id}").accessPackageResourceRoleScopes()
	.buildRequest()
	.post(accessPackageResourceRoleScope);

```