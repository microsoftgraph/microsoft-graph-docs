---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PhoneAuthenticationMethod phoneAuthenticationMethod = new PhoneAuthenticationMethod();
phoneAuthenticationMethod.phoneNumber = "+1 2065555554";
phoneAuthenticationMethod.phoneType = AuthenticationPhoneType.MOBILE;

graphClient.me().authentication().phoneMethods("3179e48a-750b-4051-897c-87b9720928f7")
	.buildRequest()
	.put(phoneAuthenticationMethod);

```