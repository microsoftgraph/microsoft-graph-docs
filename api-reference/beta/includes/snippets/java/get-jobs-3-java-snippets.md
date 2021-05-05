---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SynchronizationJobCollectionPage jobs = graphClient.servicePrincipals("{id}").synchronization().jobs()
	.buildRequest()
	.get();

```