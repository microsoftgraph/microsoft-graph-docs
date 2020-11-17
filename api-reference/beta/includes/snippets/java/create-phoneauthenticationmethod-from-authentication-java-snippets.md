---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PhoneAuthenticationMethod phoneAuthenticationMethod = new PhoneAuthenticationMethod();
phoneAuthenticationMethod.phoneNumber = "+1 2065555555";
phoneAuthenticationMethod.phoneType = AuthenticationPhoneType.MOBILE;

graphClient.me().authentication().phoneMethods()
	.buildRequest()
	.post(phoneAuthenticationMethod);

```