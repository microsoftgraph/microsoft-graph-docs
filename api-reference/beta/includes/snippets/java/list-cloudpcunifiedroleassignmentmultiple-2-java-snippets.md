---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignmentMultipleCollectionPage roleAssignments = graphClient.roleManagement().cloudPC().roleAssignments()
	.buildRequest()
	.filter("roleDefinitionId eq 'b5c08161-a7af-481c-ace2-a20a69a48fb1'")
	.get();

```