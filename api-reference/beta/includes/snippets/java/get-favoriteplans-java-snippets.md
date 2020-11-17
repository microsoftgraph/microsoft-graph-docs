---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPlannerPlanCollectionWithReferencesPage favoritePlans = graphClient.me().planner().favoritePlans()
	.buildRequest()
	.get();

```