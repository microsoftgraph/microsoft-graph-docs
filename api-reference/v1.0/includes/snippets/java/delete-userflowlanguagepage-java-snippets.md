---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identity().b2xUserFlows("B2X_1_Partner").languages("en").overridesPages("selfasserted1_1").content()
	.buildRequest()
	.delete();

```