---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> userIdsList = new LinkedList<String>();
userIdsList.add("29f270bb-4d23-4f68-8a57-dc73dc0d4caf");

graphClient.identityProtection().riskyUsers()
	.confirmCompromised(RiskyUserConfirmCompromisedParameterSet
		.newBuilder()
		.withUserIds(userIdsList)
		.build())
	.buildRequest()
	.post();

```