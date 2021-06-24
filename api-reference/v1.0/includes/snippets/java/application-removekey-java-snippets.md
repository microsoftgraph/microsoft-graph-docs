---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UUID keyId = UUID.fromString("f0b0b335-1d71-4883-8f98-567911bfdca6");

String proof = "eyJ0eXAiOiJ...";

graphClient.applications("{id}")
	.removeKey(ApplicationRemoveKeyParameterSet
		.newBuilder()
		.withKeyId(keyId)
		.withProof(proof)
		.build())
	.buildRequest()
	.post();

```