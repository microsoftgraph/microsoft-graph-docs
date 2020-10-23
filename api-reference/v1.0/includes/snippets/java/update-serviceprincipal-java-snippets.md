---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServicePrincipal servicePrincipal = new ServicePrincipal();
servicePrincipal.appRoleAssignmentRequired = true;

graphClient.servicePrincipals("{id}")
	.buildRequest()
	.patch(servicePrincipal);

```