---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PasswordAuthenticationMethodCollectionPage passwordMethods = graphClient.me().authentication().passwordMethods()
	.buildRequest()
	.get();

```