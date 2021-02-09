---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISchemaExtensionCollectionPage schemaExtensions = graphClient.schemaExtensions()
	.buildRequest()
	.filter("id eq 'graphlearn_test'")
	.get();

```