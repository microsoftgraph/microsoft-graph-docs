---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPrivilegedApprovalCollectionPage myRequests = graphClient.privilegedApproval()
	.myRequests()
	.buildRequest()
	.get();

```