---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedApprovalMyRequestsCollectionPage myRequests = graphClient.privilegedApproval()
	.myRequests()
	.buildRequest()
	.get();

```