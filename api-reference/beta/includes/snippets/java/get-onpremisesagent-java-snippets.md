---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnPremisesAgent onPremisesAgent = graphClient.onPremisesPublishingProfiles("provisioning").agents("1234b780-965f-4149-85c5-a8c73e58b67d")
	.buildRequest()
	.expand("agentGroups")
	.get();

```