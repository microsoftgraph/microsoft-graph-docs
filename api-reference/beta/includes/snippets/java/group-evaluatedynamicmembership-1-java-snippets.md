---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String memberId = "319b41e8-d9e4-42f8-bdc9-741113f48b33";

graphClient.groups("{id}")
	.evaluateDynamicMembership(GroupEvaluateDynamicMembershipParameterSet
		.newBuilder()
		.withMemberId(memberId)
		.build())
	.buildRequest()
	.post();

```