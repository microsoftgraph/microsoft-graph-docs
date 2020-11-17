---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IConnectorCollectionPage members = graphClient.onPremisesPublishingProfiles("applicationProxy").connectorGroups("{id}").members()
	.buildRequest()
	.get();

```