---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TemporaryAccessPassAuthenticationMethodCollectionPage temporaryAccessPassMethods = graphClient.me().authentication().temporaryAccessPassMethods()
	.buildRequest()
	.get();

```