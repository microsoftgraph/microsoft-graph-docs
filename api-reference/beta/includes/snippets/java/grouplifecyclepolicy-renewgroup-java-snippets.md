---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String groupId = "ffffffff-ffff-ffff-ffff-ffffffffffff";

graphClient.groupLifecyclePolicies()
	.renewGroup(GroupLifecyclePolicyRenewGroupParameterSet
		.newBuilder()
		.withGroupId(groupId)
		.build())
	.buildRequest()
	.post();

```