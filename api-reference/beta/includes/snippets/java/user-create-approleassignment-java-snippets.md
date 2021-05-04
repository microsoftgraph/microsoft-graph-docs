---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppRoleAssignment appRoleAssignment = new AppRoleAssignment();
appRoleAssignment.principalId = UUID.fromString("cde330e5-2150-4c11-9c5b-14bfdc948c79");
appRoleAssignment.resourceId = UUID.fromString("8e881353-1735-45af-af21-ee1344582a4d");
appRoleAssignment.appRoleId = UUID.fromString("00000000-0000-0000-0000-000000000000");

graphClient.users("cde330e5-2150-4c11-9c5b-14bfdc948c79").appRoleAssignments()
	.buildRequest()
	.post(appRoleAssignment);

```