---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemInsightsSettings itemInsightsSettings = graphClient.organization("{organizationId}").settings().itemInsights()
	.buildRequest()
	.get();

```