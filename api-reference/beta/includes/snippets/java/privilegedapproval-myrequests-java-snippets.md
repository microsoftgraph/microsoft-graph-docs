---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPrivilegedApprovalMyRequestsCollectionPage myRequests = graphClient.privilegedApproval()
	.myRequests()
	.buildRequest()
	.get();

```