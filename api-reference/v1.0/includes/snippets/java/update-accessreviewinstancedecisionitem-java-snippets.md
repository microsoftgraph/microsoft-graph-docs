---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewInstanceDecisionItem accessReviewInstanceDecisionItem = new AccessReviewInstanceDecisionItem();
accessReviewInstanceDecisionItem.decision = "Approve";
accessReviewInstanceDecisionItem.justification = "Kathleen still needs access to the Marketing group as she works in the Marketing organization.";

graphClient.identityGovernance().accessReviews().definitions("abadf3b6-8ea4-4dea-90a5-9eac8fe93fbd").instances("4444f3b6-8ea4-4dea-90a5-9eac8fe95678").decisions("5555f3b6-8ea4-4dea-90a5-9eac8fe95555")
	.buildRequest()
	.patch(accessReviewInstanceDecisionItem);

```