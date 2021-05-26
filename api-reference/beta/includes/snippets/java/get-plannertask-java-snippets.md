---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerTask plannerTask = graphClient.planner().tasks("01gzSlKkIUSUl6DF_EilrmQAKDhh")
	.buildRequest()
	.get();

```