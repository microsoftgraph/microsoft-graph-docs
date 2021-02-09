---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String id = "5793aa3b-cca9-4794-679a240f8b58";

graphClient.servicePrincipals("{id}")
	.getPasswordSingleSignOnCredentials(id)
	.buildRequest()
	.post();

```