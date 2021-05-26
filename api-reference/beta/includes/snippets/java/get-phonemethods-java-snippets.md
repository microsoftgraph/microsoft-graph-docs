---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PhoneAuthenticationMethodCollectionPage phoneMethods = graphClient.me().authentication().phoneMethods()
	.buildRequest()
	.get();

```