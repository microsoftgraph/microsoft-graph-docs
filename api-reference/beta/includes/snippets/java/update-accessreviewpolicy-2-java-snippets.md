---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewPolicy accessReviewPolicy = new AccessReviewPolicy();
accessReviewPolicy.isGroupOwnerManagementEnabled = true;

graphClient.identityGovernance().accessReviews().policy()
	.buildRequest()
	.patch(accessReviewPolicy);

```