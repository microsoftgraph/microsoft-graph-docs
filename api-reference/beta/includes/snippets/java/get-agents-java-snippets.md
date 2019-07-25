---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IOnPremisesAgentCollectionPage agents = graphClient.onPremisesPublishingProfiles("provisioning").agents()
	.buildRequest()
	.expand("agentGroups")
	.get();

```