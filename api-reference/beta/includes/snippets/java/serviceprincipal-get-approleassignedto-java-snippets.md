---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAppRoleAssignmentCollectionPage appRoleAssignedTo = graphClient.servicePrincipals("{id}").appRoleAssignedTo()
	.buildRequest()
	.get();

```