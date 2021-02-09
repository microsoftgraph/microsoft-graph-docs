---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPasswordAuthenticationMethodCollectionPage passwordMethods = graphClient.me().authentication().passwordMethods()
	.buildRequest()
	.get();

```