---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.users("kim@contoso.com").authentication().passwordlessMicrosoftAuthenticatorMethods("R18B3t8Ogh9XIOGmPt81d6p_KXJs1YTxfGgGqeVFJSM1")
	.buildRequest()
	.delete();

```