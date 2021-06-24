---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerPlanCollectionWithReferencesPage favoritePlans = graphClient.me().planner().favoritePlans()
	.buildRequest()
	.get();

```