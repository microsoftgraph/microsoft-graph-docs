---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerProgressTaskBoardTaskFormat plannerProgressTaskBoardTaskFormat = graphClient.planner().tasks("{id}").progressTaskBoardFormat()
	.buildRequest()
	.get();

```