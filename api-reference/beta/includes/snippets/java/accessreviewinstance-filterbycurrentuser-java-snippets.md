---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewInstanceFilterByCurrentUserCollectionPage filterByCurrentUser = graphClient.identityGovernance().accessReviews().definitions("08531375-eff6-4e21-b1a8-de0eb37ec913").instances()
	.filterByCurrentUser(AccessReviewInstanceFilterByCurrentUserParameterSet
		.newBuilder()
		.withOn('reviewer')
		.build())
	.buildRequest()
	.get();

```