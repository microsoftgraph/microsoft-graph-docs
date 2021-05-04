---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerDeltaDeltaCollectionPage delta = graphClient.me().planner().all()
	.delta()
	.buildRequest()
	.get();

```