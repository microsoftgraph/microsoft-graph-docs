---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("$filter", "id eq 'graphlearn_test'"));

ISchemaExtensionCollectionPage schemaExtensions = graphClient.schemaExtensions()
	.buildRequest( requestOptions )
	.get();

```