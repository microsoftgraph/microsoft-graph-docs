---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISynchronizationJobCollectionPage jobs = graphClient.servicePrincipals("{id}").synchronization().jobs()
	.buildRequest()
	.get();

```