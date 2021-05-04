---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerBucketTaskBoardTaskFormat plannerBucketTaskBoardTaskFormat = graphClient.planner().tasks("{task-id}").bucketTaskBoardFormat()
	.buildRequest()
	.get();

```