---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPlannerDeltaDeltaCollectionPage delta = graphClient.me().planner().all()
	.delta()
	.buildRequest()
	.get();

```