---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SynchronizationSchema synchronizationSchema = graphClient.servicePrincipals("{id}").synchronization().jobs("{jobId}").schema()
	.buildRequest()
	.get();

```