---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Connector connector = new Connector();
connector.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectors/{id}"));

graphClient.onPremisesPublishingProfiles("applicationProxy").connectorGroups("{id}").members().references()
	.buildRequest()
	.post(connector);

```