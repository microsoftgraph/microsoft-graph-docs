---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedRoleAssignmentRequestMyCollectionPage my = graphClient.privilegedRoleAssignmentRequests()
	.my()
	.buildRequest()
	.get();

```