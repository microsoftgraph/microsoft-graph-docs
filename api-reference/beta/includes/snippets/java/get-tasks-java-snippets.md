---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPlannerTaskCollectionPage tasks = graphClient.me().planner().tasks()
	.buildRequest()
	.get();

```