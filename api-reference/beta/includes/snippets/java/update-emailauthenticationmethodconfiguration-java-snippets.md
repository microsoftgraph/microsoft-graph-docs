---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EmailAuthenticationMethodConfiguration authenticationMethodConfiguration = new EmailAuthenticationMethodConfiguration();
authenticationMethodConfiguration.allowExternalIdToUseEmailOtp = ExternalEmailOtpState.DISABLED;

graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations("email")
	.buildRequest()
	.patch(authenticationMethodConfiguration);

```