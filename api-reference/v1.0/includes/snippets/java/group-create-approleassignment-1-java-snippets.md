---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppRoleAssignment appRoleAssignment = new AppRoleAssignment();
appRoleAssignment.principalId = UUID.fromString("7679d9a4-2323-44cd-b5c2-673ec88d8b12");
appRoleAssignment.resourceId = UUID.fromString("076e8b57-bac8-49d7-9396-e3449b685055");
appRoleAssignment.appRoleId = UUID.fromString("00000000-0000-0000-0000-000000000000");

graphClient.groups("7679d9a4-2323-44cd-b5c2-673ec88d8b12").appRoleAssignments()
	.buildRequest()
	.post(appRoleAssignment);

```