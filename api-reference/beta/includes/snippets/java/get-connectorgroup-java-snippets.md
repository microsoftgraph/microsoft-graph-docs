---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConnectorGroup connectorGroup = graphClient.onPremisesPublishingProfiles("applicationProxy").connectorGroups("{id}")
	.buildRequest()
	.get();

```