---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerTaskCollectionPage tasks = graphClient.planner().plans("xqQg5FS2LkCp935s-FIFm2QAFkHM").tasks()
	.buildRequest()
	.get();

```