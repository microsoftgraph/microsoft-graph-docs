---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserFlowLanguagePageCollectionPage defaultPages = graphClient.identity().b2cUserFlows("B2C_1_Customer").languages("en").defaultPages()
	.buildRequest()
	.get();

```