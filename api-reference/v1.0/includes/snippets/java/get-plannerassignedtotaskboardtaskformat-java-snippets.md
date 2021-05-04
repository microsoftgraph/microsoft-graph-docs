---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerAssignedToTaskBoardTaskFormat plannerAssignedToTaskBoardTaskFormat = graphClient.planner().tasks("{task-id}").assignedToTaskBoardFormat()
	.buildRequest()
	.get();

```