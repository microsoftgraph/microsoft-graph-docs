---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewHistoryDefinition accessReviewHistoryDefinition = graphClient.identityGovernance().accessReviews().historyDefinitions("b2cb022f-b7e1-40f3-9854-c65a40861c38")
	.buildRequest()
	.get();

```