---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignmentMultipleCollectionPage roleAssignments = graphClient.roleManagement().cloudPC().roleAssignments()
	.buildRequest()
	.get();

```