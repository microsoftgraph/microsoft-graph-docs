---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RbacApplicationRoleScheduleInstancesCollectionPage roleScheduleInstances = graphClient.roleManagement().directory()
	.roleScheduleInstances(RbacApplicationRoleScheduleInstancesParameterSet
		.newBuilder()
		.withDirectoryScopeId("parameterValue")
		.withAppScopeId("parameterValue")
		.withPrincipalId("parameterValue")
		.withRoleDefinitionId("parameterValue")
		.build())
	.buildRequest()
	.get();

```