---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RbacApplicationRoleSchedulesCollectionPage roleSchedules = graphClient.roleManagement().directory()
	.roleSchedules(RbacApplicationRoleSchedulesParameterSet
		.newBuilder()
		.withDirectoryScopeId("a3bb8764-cb92-4276-9d2a-ca1e895e55ea")
		.withAppScopeId("a3bb8764-cb92-4276-9d2a-ca1e895e55ea")
		.withPrincipalId("a3bb8764-cb92-4276-9d2a-ca1e895e55ea")
		.withRoleDefinitionId("a3bb8764-cb92-4276-9d2a-ca1e895e55ea")
		.build())
	.buildRequest()
	.get();

```