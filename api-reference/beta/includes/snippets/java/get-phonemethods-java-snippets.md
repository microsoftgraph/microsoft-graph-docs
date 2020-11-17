---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPhoneAuthenticationMethodCollectionPage phoneMethods = graphClient.me().authentication().phoneMethods()
	.buildRequest()
	.get();

```