---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String id = "5793aa3b-cca9-4794-679a240f8b58";

graphClient.servicePrincipals("{id}")
	.deletePasswordSingleSignOnCredentials(ServicePrincipalDeletePasswordSingleSignOnCredentialsParameterSet
		.newBuilder()
		.withId(id)
		.build())
	.buildRequest()
	.post();

```