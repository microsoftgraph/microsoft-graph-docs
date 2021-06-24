---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewScheduleDefinitionCollectionPage definitions = graphClient.identityGovernance().accessReviews().definitions()
	.buildRequest()
	.filter("contains(scope/microsoft.graph.accessReviewQueryScope/query, './members')")
	.get();

```