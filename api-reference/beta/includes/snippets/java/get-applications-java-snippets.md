---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ApplicationCollectionWithReferencesPage applications = graphClient.onPremisesPublishingProfiles("applicationProxy").connectorGroups("{id}").applications()
	.buildRequest()
	.get();

```