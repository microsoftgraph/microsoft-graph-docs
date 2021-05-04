---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InputStream stream = graphClient.identity().b2xUserFlows("B2X_1_Partner").languages("en").defaultPages("idpselections").content()
	.buildRequest()
	.get();

```