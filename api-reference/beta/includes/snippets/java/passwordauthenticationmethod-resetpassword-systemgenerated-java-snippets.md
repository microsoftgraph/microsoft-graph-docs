---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.users("{id | userPrincipalName}").authentication().passwordMethods("{id}")
	.resetPassword(null,null)
	.buildRequest()
	.post();

```