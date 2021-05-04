---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConnectorCollectionPage members = graphClient.onPremisesPublishingProfiles("applicationProxy").connectorGroups("{id}").members()
	.buildRequest()
	.get();

```