---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignmentMultiple unifiedRoleAssignmentMultiple = graphClient.roleManagement().cloudPC().roleAssignments("dbe9d288-fd87-41f4-b33d-b498ed207096")
	.buildRequest()
	.expand("roleDefinition")
	.get();

```