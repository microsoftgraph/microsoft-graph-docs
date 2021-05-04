---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LongRunningOperation longRunningOperation = graphClient.users("{id | userPrincipalName}").authentication().operations("{id}")
	.buildRequest()
	.get();

```