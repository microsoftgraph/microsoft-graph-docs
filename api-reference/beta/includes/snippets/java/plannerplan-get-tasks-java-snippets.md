---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPlannerTaskCollectionPage tasks = graphClient.planner().plans("xqQg5FS2LkCp935s-FIFm2QAFkHM").tasks()
	.buildRequest()
	.get();

```