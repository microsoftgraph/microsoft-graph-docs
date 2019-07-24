---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPrivilegedRoleAssignmentRequestCollectionPage my = graphClient.privilegedRoleAssignmentRequests()
	.my()
	.buildRequest()
	.get();

```