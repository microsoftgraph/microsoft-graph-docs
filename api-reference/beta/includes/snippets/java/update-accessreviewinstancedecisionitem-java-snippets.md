---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewInstanceDecisionItem accessReviewInstanceDecisionItem = new AccessReviewInstanceDecisionItem();
accessReviewInstanceDecisionItem.decision = "Approve";
accessReviewInstanceDecisionItem.justification = "I trust this person";

graphClient.me().pendingAccessReviewInstances("70a68410-67f3-4d4c-b946-6989e050be19").decisions("654b34e7-b48f-4772-a2d4-08f1d0dd014c")
	.buildRequest()
	.patch(accessReviewInstanceDecisionItem);

```