---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPlannerTaskCollectionPage tasks = graphClient.planner().buckets("gcrYAaAkgU2EQUvpkNNXLGQAGTtu").tasks()
	.buildRequest()
	.get();

```