---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConnectorGroup connectorGroup = new ConnectorGroup();
connectorGroup.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/onPremisesPublishingProfiles/applicationproxy/connectorGroups/{id}"));

graphClient.applications("{id}").connectorGroup().reference()
	.buildRequest()
	.put(connectorGroup);

```