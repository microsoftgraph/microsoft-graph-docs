---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignmentCollectionPage roleAssignments = graphClient.roleManagement().directory().roleAssignments()
	.buildRequest()
	.filter("roleDefinitionId eq '62e90394-69f5-4237-9190-012177145e10'")
	.expand("principal")
	.get();

```