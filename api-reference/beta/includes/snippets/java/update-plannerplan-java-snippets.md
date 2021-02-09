---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\""));

PlannerPlan plannerPlan = new PlannerPlan();
plannerPlan.title = "title-value";

graphClient.planner().plans("{id}")
	.buildRequest( requestOptions )
	.patch(plannerPlan);

```