---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConnectorGroup connectorGroup = new ConnectorGroup();
connectorGroup.name = "name-value";
connectorGroup.isDefault = false;

graphClient.onPremisesPublishingProfiles("applicationProxy").connectorGroups()
	.buildRequest()
	.post(connectorGroup);

```