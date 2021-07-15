---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String decision = "Approve";

String justification = "All principals with access need continued access to the resource (Marketing Group) as all the principals are on the marketing team";

String resourceId = "a5c51e59-3fcd-4a37-87a1-835c0c21488a";

graphClient.identityGovernance().accessReviews().definitions("e6cafba0-cbf0-4748-8868-0810c7f4cc06").instances("1234fba0-cbf0-6778-8868-9999c7f4cc06")
	.batchRecordDecisions(AccessReviewInstanceBatchRecordDecisionsParameterSet
		.newBuilder()
		.withDecision(decision)
		.withJustification(justification)
		.withPrincipalId(null)
		.withResourceId(resourceId)
		.build())
	.buildRequest()
	.post();

```