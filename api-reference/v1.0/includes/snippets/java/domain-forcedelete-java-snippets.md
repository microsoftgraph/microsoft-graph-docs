---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

boolean disableUserAccounts = True;

graphClient.domains("{id}")
	.forceDelete(disableUserAccounts)
	.buildRequest()
	.post();

```