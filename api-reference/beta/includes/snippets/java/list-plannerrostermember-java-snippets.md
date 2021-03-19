---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerRosterMemberCollectionPage members = graphClient.planner().rosters("6519868f-868f-6519-8f86-19658f861965").members()
	.buildRequest()
	.get();

```