---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PasswordCredential passwordCredential = new PasswordCredential();
passwordCredential.displayName = "Password friendly name";

graphClient.servicePrincipals("{id}")
	.addPassword(ServicePrincipalAddPasswordParameterSet
		.newBuilder()
		.withPasswordCredential(passwordCredential)
		.build())
	.buildRequest()
	.post();

```