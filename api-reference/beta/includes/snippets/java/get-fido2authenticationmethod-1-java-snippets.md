---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Fido2AuthenticationMethod fido2AuthenticationMethod = graphClient.me().authentication().fido2Methods("-2_GRUg2-HYz6_1YG4YRAQ2")
	.buildRequest()
	.get();

```