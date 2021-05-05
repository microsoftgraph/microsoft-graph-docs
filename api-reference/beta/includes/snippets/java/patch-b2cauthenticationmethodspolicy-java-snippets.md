---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

B2cAuthenticationMethodsPolicy b2cAuthenticationMethodsPolicy = new B2cAuthenticationMethodsPolicy();
b2cAuthenticationMethodsPolicy.isEmailPasswordAuthenticationEnabled = false;
b2cAuthenticationMethodsPolicy.isUserNameAuthenticationEnabled = true;
b2cAuthenticationMethodsPolicy.isPhoneOneTimePasswordAuthenticationEnabled = true;

graphClient.policies().b2cAuthenticationMethodsPolicy()
	.buildRequest()
	.patch(b2cAuthenticationMethodsPolicy);

```