---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\""));

PlannerBucketTaskBoardTaskFormat plannerBucketTaskBoardTaskFormat = new PlannerBucketTaskBoardTaskFormat();
plannerBucketTaskBoardTaskFormat.orderHint = "A6673H Ejkl!";

graphClient.planner().tasks("{task-id}").bucketTaskBoardFormat()
	.buildRequest( requestOptions )
	.patch(plannerBucketTaskBoardTaskFormat);

```