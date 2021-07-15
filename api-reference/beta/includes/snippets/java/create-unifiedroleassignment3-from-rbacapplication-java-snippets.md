---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignment unifiedRoleAssignment = new UnifiedRoleAssignment();
unifiedRoleAssignment.principalId = "679a9213-c497-48a4-830a-8d3d25d94ddc";
unifiedRoleAssignment.roleDefinitionId = "ae79f266-94d4-4dab-b730-feca7e132178";
unifiedRoleAssignment.appScopeId = "/AccessPackageCatalog/beedadfe-01d5-4025-910b-84abb9369997";

graphClient.roleManagement().entitlementManagement().roleAssignments()
	.buildRequest()
	.post(unifiedRoleAssignment);

```