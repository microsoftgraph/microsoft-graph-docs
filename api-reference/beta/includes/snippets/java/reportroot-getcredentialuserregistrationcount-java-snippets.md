---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ICredentialUserRegistrationCountCollectionPage getCredentialUserRegistrationCount = graphClient.reports()
	.getCredentialUserRegistrationCount()
	.buildRequest()
	.get();

```