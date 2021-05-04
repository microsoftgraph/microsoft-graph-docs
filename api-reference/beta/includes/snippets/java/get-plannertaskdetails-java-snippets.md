---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerTaskDetails plannerTaskDetails = graphClient.planner().tasks("gcrYAaAkgU2EQUvpkNNXLGQAGTtu").details()
	.buildRequest()
	.get();

```