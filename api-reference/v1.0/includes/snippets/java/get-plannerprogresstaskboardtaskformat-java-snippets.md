---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerProgressTaskBoardTaskFormat plannerProgressTaskBoardTaskFormat = graphClient.planner().tasks("{task-id}").progressTaskBoardFormat()
	.buildRequest()
	.get();

```