---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Connector connector = graphClient.onPremisesPublishingProfiles("applicationProxy").connectors("{id}")
	.buildRequest()
	.get();

```