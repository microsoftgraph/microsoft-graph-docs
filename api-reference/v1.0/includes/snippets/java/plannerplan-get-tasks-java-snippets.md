---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerTaskCollectionPage tasks = graphClient.planner().plans("{plan-id}").tasks()
	.buildRequest()
	.get();

```