---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SchedulingGroupCollectionPage schedulingGroups = graphClient.teams("{teamId}").schedule().schedulingGroups()
	.buildRequest()
	.get();

```