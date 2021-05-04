---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConnectorGroup connectorGroup = new ConnectorGroup();
connectorGroup.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups/{id}"));

graphClient.onPremisesPublishingProfiles("applicationProxy").connectors("{id}").memberOf().references()
	.buildRequest()
	.post(connectorGroup);

```