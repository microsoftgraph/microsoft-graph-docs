---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PublishedResourceCollectionPage publishedResources = graphClient.onPremisesPublishingProfiles("{publishingType}").publishedResources()
	.buildRequest()
	.expand("agentGroups")
	.get();

```