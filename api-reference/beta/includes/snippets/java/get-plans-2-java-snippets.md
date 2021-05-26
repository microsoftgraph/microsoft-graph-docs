---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerPlanCollectionPage plans = graphClient.groups("ebf3b108-5234-4e22-b93d-656d7dae5874").planner().plans()
	.buildRequest()
	.get();

```