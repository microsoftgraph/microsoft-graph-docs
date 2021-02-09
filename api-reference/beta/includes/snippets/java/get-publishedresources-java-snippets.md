---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPublishedResourceCollectionPage publishedResources = graphClient.onPremisesPublishingProfiles("{publishingType}").publishedResources()
	.buildRequest()
	.expand("agentGroups")
	.get();

```