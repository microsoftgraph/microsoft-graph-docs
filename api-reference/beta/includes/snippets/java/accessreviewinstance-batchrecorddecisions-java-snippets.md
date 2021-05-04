---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String decision = "Approve";

String justification = "All principals with access need continued access to the resource (Marketing Group) as all the principals are on the marketing team";

String resourceId = "a5c51e59-3fcd-4a37-87a1-835c0c21488a";

graphClient.me().pendingAccessReviewInstances("{accessReviewInstanceId}")
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