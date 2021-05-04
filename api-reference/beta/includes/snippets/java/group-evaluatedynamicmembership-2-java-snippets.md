---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String memberId = "319b41e8-d9e4-42f8-bdc9-741113f48b33";

String membershipRule = "(user.displayName -startsWith "EndTestUser")";

graphClient.groups()
	.evaluateDynamicMembership(GroupEvaluateDynamicMembershipParameterSet
		.newBuilder()
		.withMemberId(memberId)
		.withMembershipRule(membershipRule)
		.build())
	.buildRequest()
	.post();

```