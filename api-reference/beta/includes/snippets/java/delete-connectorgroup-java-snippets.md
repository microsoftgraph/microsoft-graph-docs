---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.onPremisesPublishingProfiles("applicationProxy").connectorGroups("{id}")
	.buildRequest()
	.delete();

```