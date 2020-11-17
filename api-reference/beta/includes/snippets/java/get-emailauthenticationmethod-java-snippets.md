---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEmailAuthenticationMethodCollectionPage emailMethods = graphClient.me().authentication().emailMethods()
	.buildRequest()
	.get();

```