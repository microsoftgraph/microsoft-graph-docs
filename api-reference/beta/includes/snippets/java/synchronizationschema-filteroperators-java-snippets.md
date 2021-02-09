---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISynchronizationSchemaFilterOperatorsCollectionPage filterOperators = graphClient.servicePrincipals("{id}").synchronization().jobs("{jobId}").schema()
	.filterOperators()
	.buildRequest()
	.get();

```