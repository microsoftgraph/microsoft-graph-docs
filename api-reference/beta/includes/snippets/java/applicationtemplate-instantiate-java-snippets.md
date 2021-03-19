---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String displayName = "My custom name";

graphClient.applicationTemplates("{id}")
	.instantiate(ApplicationTemplateInstantiateParameterSet
		.newBuilder()
		.withDisplayName(displayName)
		.build())
	.buildRequest()
	.post();

```