---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PublishedResource publishedResource = new PublishedResource();
publishedResource.displayName = "Demo provisioning (updated)";

graphClient.onPremisesPublishingProfiles("provisioning").publishedResources("1234b780-965f-4149-85c5-a8c73e58b67d")
	.buildRequest()
	.patch(publishedResource);

```