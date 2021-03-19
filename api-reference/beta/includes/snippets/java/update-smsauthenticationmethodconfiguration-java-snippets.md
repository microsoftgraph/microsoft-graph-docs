---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SmsAuthenticationMethodConfiguration authenticationMethodConfiguration = new SmsAuthenticationMethodConfiguration();
authenticationMethodConfiguration.id = "Sms";
authenticationMethodConfiguration.state = AuthenticationMethodState.ENABLED;

graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations("sms")
	.buildRequest()
	.patch(authenticationMethodConfiguration);

```