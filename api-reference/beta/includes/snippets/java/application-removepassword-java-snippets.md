---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UUID keyId = UUID.fromString("f0b0b335-1d71-4883-8f98-567911bfdca6");

graphClient.applications("{id}")
	.removePassword(ApplicationRemovePasswordParameterSet
		.newBuilder()
		.withKeyId(keyId)
		.build())
	.buildRequest()
	.post();

```