---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPrivilegedRoleAssignmentMyCollectionPage my = graphClient.privilegedRoleAssignments()
	.my()
	.buildRequest()
	.get();

```