---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<SynchronizationSecretKeyStringValuePair> credentialsList = new LinkedList<SynchronizationSecretKeyStringValuePair>();
SynchronizationSecretKeyStringValuePair credentials = new SynchronizationSecretKeyStringValuePair();

credentialsList.add(credentials);

graphClient.applications("{applicationsId}").synchronization()
	.acquireAccessToken(SynchronizationAcquireAccessTokenParameterSet
		.newBuilder()
		.withCredentials(credentialsList)
		.build())
	.buildRequest()
	.post();

```