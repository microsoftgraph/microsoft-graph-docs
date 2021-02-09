---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPlannerPlanCollectionWithReferencesPage recentPlans = graphClient.me().planner().recentPlans()
	.buildRequest()
	.get();

```