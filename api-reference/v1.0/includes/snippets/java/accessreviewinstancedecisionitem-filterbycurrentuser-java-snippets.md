---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewInstanceDecisionItemFilterByCurrentUserCollectionPage filterByCurrentUser = graphClient.identityGovernance().accessReviews().definitions("1234ea1c-8d12-457b-1234-a37dc59e54e0").instances("7070ea1c-8d12-457b-bd35-a37dc59e54e0").decisions()
	.filterByCurrentUser(AccessReviewInstanceDecisionItemFilterByCurrentUserParameterSet
		.newBuilder()
		.withOn('reviewer')
		.build())
	.buildRequest()
	.get();

```