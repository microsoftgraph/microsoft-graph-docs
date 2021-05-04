---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserFlowLanguagePageCollectionPage overridesPages = graphClient.identity().b2xUserFlows("B2X_1_Partner").languages("en").overridesPages()
	.buildRequest()
	.get();

```