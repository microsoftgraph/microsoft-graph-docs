---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

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
	.validateCredentials(null,null,null,credentialsList)
	.buildRequest()
	.post();

```