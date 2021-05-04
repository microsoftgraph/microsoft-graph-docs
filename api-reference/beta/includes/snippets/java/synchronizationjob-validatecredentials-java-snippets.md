---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<SynchronizationSecretKeyStringValuePair> credentialsList = new LinkedList<SynchronizationSecretKeyStringValuePair>();
SynchronizationSecretKeyStringValuePair credentials = new SynchronizationSecretKeyStringValuePair();
credentials.key = SynchronizationSecret.USER_NAME;
credentials.value = "user@domain.com";

credentialsList.add(credentials);
SynchronizationSecretKeyStringValuePair credentials1 = new SynchronizationSecretKeyStringValuePair();
credentials1.key = SynchronizationSecret.PASSWORD;
credentials1.value = "password-value";

credentialsList.add(credentials1);

graphClient.servicePrincipals("{id}").synchronization().jobs("{id}")
	.validateCredentials(SynchronizationJobValidateCredentialsParameterSet
		.newBuilder()
		.withApplicationIdentifier(null)
		.withTemplateId(null)
		.withUseSavedCredentials(null)
		.withCredentials(credentialsList)
		.build())
	.buildRequest()
	.post();

```