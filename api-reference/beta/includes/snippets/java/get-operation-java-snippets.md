---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LongRunningOperation longRunningOperation = graphClient.users("{id | userPrincipalName}").authentication().operations("{id}")
	.buildRequest()
	.get();

```