---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> userIdsList = new LinkedList<String>();
userIdsList.add("04487ee0-f4f6-4e7f-8999-facc5a30e232");

graphClient.identityProtection().riskyUsers()
	.dismiss(userIdsList)
	.buildRequest()
	.post();

```