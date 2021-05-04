---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EmailAuthenticationMethod emailAuthenticationMethod = graphClient.me().authentication().emailMethods("3ddfcfc8-9383-446f-83cc-3ab9be4be18f")
	.buildRequest()
	.get();

```