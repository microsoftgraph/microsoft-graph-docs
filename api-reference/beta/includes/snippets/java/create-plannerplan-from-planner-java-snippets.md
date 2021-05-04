---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerPlan plannerPlan = new PlannerPlan();
PlannerPlanContainer container = new PlannerPlanContainer();
container.url = "https://graph.microsoft.com/beta/groups/ebf3b108-5234-4e22-b93d-656d7dae5874";
plannerPlan.container = container;
plannerPlan.title = "title-value";

graphClient.planner().plans()
	.buildRequest()
	.post(plannerPlan);

```