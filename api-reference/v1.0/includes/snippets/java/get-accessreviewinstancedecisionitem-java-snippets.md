---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewInstanceDecisionItem accessReviewInstanceDecisionItem = graphClient.identityGovernance().accessReviews().definitions("abadf3b6-8ea4-4dea-90a5-9eac8fe93fbd").instances("abadf3b6-8ea4-4dea-90a5-9eac8fe93fbd").decisions("9550e25b-f315-4454-9d87-16b885c35de4")
	.buildRequest()
	.get();

```