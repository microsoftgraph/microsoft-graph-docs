---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String groupId = "ffffffff-ffff-ffff-ffff-ffffffffffff";

graphClient.groupLifecyclePolicies()
	.renewGroup(groupId)
	.buildRequest()
	.post();

```