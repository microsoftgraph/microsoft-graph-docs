---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthorizationPolicy authorizationPolicy = new AuthorizationPolicy();
DefaultUserRolePermissions defaultUserRolePermissions = new DefaultUserRolePermissions();
LinkedList<String> permissionGrantPoliciesAssignedList = new LinkedList<String>();
permissionGrantPoliciesAssignedList.add("managePermissionGrantsForSelf.microsoft-user-default-low");
defaultUserRolePermissions.permissionGrantPoliciesAssigned = permissionGrantPoliciesAssignedList;
authorizationPolicy.defaultUserRolePermissions = defaultUserRolePermissions;

graphClient.policies().authorizationPolicy()
	.buildRequest()
	.patch(authorizationPolicy);

```