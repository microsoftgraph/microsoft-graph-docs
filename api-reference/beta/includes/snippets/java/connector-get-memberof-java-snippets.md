---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IConnectorGroupCollectionPage memberOf = graphClient.onPremisesPublishingProfiles("applicationProxy").connectors("{id}").memberOf()
	.buildRequest()
	.get();

```