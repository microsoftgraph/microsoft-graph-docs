---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SchedulingGroup schedulingGroup = graphClient.teams("{teamId}").schedule().schedulingGroups("{schedulingGroupId}")
	.buildRequest()
	.get();

```