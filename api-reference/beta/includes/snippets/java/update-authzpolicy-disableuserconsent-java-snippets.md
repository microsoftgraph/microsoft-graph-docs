---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthorizationPolicy authorizationPolicy = new AuthorizationPolicy();
LinkedList<String> permissionGrantPolicyIdsAssignedToDefaultUserRoleList = new LinkedList<String>();
authorizationPolicy.permissionGrantPolicyIdsAssignedToDefaultUserRole = permissionGrantPolicyIdsAssignedToDefaultUserRoleList;

graphClient.policies().authorizationPolicy("authorizationPolicy")
	.buildRequest()
	.patch(authorizationPolicy);

```