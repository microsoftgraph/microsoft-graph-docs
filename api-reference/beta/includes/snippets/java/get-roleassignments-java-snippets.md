---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IUnifiedRoleAssignmentCollectionPage roleAssignments = graphClient.roleManagement().directory().roleAssignments()
	.buildRequest()
	.filter(" principalId eq 'f1847572-48aa-47aa-96a3-2ec61904f41f'")
	.get();

```