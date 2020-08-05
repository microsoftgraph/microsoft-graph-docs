---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppRoleAssignment appRoleAssignment = new AppRoleAssignment();
appRoleAssignment.principalId = "principalId-value";
appRoleAssignment.resourceId = "resourceId-value";
appRoleAssignment.appRoleId = "appRoleId-value";

graphClient.servicePrincipals("{id}").appRoleAssignments()
	.buildRequest()
	.post(appRoleAssignment);

```