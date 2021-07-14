---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewInstanceDecisionItemCollectionPage decisions = graphClient.identityGovernance().accessReviews().definitions("16d424f6-0100-4bf1-9ebc-fe009c5e5006").instances("bb14c722-51b8-4962-9bd2-1d96ba773d80").decisions()
	.buildRequest()
	.get();

```