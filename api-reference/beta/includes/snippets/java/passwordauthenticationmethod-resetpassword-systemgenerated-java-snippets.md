---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.users("{id | userPrincipalName}").authentication().passwordMethods("{id}")
	.resetPassword(AuthenticationMethodResetPasswordParameterSet
		.newBuilder()
		.withNewPassword(null)
		.withRequireChangeOnNextSignIn(null)
		.build())
	.buildRequest()
	.post();

```