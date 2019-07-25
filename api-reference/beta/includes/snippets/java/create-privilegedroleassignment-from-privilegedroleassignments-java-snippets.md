---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedRoleAssignment privilegedRoleAssignment = new PrivilegedRoleAssignment();
privilegedRoleAssignment.userId = "userId-value";
privilegedRoleAssignment.roleId = "roleId-value";

graphClient.privilegedRoleAssignments()
	.buildRequest()
	.post(privilegedRoleAssignment);

```