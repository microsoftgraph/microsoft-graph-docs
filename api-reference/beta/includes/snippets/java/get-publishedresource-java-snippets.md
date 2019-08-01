---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PublishedResource publishedResource = graphClient.onPremisesPublishingProfiles("provisioning").publishedResources("aed0b780-965f-4149-85c5-a8c73e58b67d")
	.buildRequest()
	.expand("agentGroups")
	.get();

```