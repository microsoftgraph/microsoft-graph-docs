---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CredentialUserRegistrationDetailsCollectionPage credentialUserRegistrationDetails = graphClient.reports().credentialUserRegistrationDetails()
	.buildRequest()
	.get();

```