---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISynchronizationSchemaFunctionsCollectionPage functions = graphClient.servicePrincipals("{id}").synchronization().jobs("{jobId}").schema()
	.functions()
	.buildRequest()
	.get();

```