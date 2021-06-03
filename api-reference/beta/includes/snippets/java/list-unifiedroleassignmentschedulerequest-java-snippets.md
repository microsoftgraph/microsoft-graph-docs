---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignmentScheduleRequestCollectionPage roleAssignmentScheduleRequests = graphClient.roleManagement().directory().roleAssignmentScheduleRequests()
	.buildRequest()
	.get();

```