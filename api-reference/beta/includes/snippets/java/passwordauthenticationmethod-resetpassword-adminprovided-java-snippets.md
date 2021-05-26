---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String newPassword = "newPassword-value";

graphClient.users("{id | userPrincipalName}").authentication().passwordMethods("{id}")
	.resetPassword(AuthenticationMethodResetPasswordParameterSet
		.newBuilder()
		.withNewPassword(newPassword)
		.withRequireChangeOnNextSignIn(null)
		.build())
	.buildRequest()
	.post();

```