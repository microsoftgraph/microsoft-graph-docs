---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignment unifiedRoleAssignment = new UnifiedRoleAssignment();
unifiedRoleAssignment.roleDefinitionId = "c2cf284d-6c41-4e6b-afac-4b80928c9034";
unifiedRoleAssignment.principalId = "f8ca5a85-489a-49a0-b555-0a6d81e56f0d";
unifiedRoleAssignment.directoryScopeId = "/";

graphClient.roleManagement().directory().roleAssignments()
	.buildRequest()
	.post(unifiedRoleAssignment);

```