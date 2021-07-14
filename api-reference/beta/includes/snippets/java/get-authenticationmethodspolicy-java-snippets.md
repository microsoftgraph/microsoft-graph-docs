---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationMethodsPolicy authenticationMethodsPolicy = graphClient.policies().authenticationMethodsPolicy()
	.buildRequest()
	.get();

```