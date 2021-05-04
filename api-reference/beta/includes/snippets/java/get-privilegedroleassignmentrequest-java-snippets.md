---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedRoleAssignmentRequestCollectionPage privilegedRoleAssignmentRequests = graphClient.privilegedRoleAssignmentRequests()
	.buildRequest()
	.get();

```