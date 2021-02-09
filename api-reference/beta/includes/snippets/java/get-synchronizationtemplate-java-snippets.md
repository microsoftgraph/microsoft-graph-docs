---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISynchronizationTemplateCollectionPage templates = graphClient.servicePrincipals("{id}").synchronization().templates()
	.buildRequest()
	.get();

```