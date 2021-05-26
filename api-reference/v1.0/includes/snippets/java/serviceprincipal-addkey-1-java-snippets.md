---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

KeyCredential keyCredential = new KeyCredential();
keyCredential.type = "AsymmetricX509Cert";
keyCredential.usage = "Verify";
keyCredential.key = Base64.getDecoder().decode("MIIDYDCCAki...");



String proof = "eyJ0eXAiOiJ...";

graphClient.servicePrincipals("{id}")
	.addKey(ServicePrincipalAddKeyParameterSet
		.newBuilder()
		.withKeyCredential(keyCredential)
		.withPasswordCredential(passwordCredential)
		.withProof(proof)
		.build())
	.buildRequest()
	.post();

```