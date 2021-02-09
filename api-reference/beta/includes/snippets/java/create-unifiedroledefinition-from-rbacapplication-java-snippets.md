---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleDefinition unifiedRoleDefinition = new UnifiedRoleDefinition();
unifiedRoleDefinition.description = "Update basic properties of application registrations";
unifiedRoleDefinition.displayName = "Application Registration Support Administrator";
LinkedList<UnifiedRolePermission> rolePermissionsList = new LinkedList<UnifiedRolePermission>();
UnifiedRolePermission rolePermissions = new UnifiedRolePermission();
LinkedList<String> allowedResourceActionsList = new LinkedList<String>();
allowedResourceActionsList.add("microsoft.directory/applications/basic/read");
rolePermissions.allowedResourceActions = allowedResourceActionsList;
rolePermissionsList.add(rolePermissions);
unifiedRoleDefinition.rolePermissions = rolePermissionsList;
unifiedRoleDefinition.isEnabled = false;

graphClient.roleManagement().directory().roleDefinitions()
	.buildRequest()
	.post(unifiedRoleDefinition);

```