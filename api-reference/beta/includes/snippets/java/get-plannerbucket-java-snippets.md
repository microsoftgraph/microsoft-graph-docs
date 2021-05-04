---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerBucket plannerBucket = graphClient.planner().buckets("hsOf2dhOJkqyYYZEtdzDe2QAIUCR")
	.buildRequest()
	.get();

```