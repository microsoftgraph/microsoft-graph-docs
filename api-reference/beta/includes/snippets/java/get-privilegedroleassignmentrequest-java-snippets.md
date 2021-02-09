---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPrivilegedRoleAssignmentRequestCollectionPage privilegedRoleAssignmentRequests = graphClient.privilegedRoleAssignmentRequests()
	.buildRequest()
	.get();

```