---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SynchronizationTemplateCollectionPage templates = graphClient.servicePrincipals("{id}").synchronization().templates()
	.buildRequest()
	.get();

```