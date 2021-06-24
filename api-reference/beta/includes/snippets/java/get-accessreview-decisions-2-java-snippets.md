---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewDecisionCollectionPage myDecisions = graphClient.accessReviews("2b83cc42-09db-46f6-8c6e-16fec466a82d").myDecisions()
	.buildRequest()
	.get();

```