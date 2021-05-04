---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerTaskCollectionPage tasks = graphClient.planner().buckets("gcrYAaAkgU2EQUvpkNNXLGQAGTtu").tasks()
	.buildRequest()
	.get();

```