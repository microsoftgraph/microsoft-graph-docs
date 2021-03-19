---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsHelloForBusinessAuthenticationMethodCollectionPage windowsHelloForBusinessMethods = graphClient.users("annie@contoso.com").authentication().windowsHelloForBusinessMethods()
	.buildRequest()
	.get();

```