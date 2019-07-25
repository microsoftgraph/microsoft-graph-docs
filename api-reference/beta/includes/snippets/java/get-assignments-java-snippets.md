---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPrivilegedRoleAssignmentCollectionPage assignments = graphClient.privilegedRoles("{id}").assignments()
	.buildRequest()
	.get();

```