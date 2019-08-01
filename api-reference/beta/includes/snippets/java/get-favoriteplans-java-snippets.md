---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPlannerPlanCollectionPage favoritePlans = graphClient.me().planner().favoritePlans()
	.buildRequest()
	.get();

```