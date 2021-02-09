---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAuthenticationMethodCollectionPage methods = graphClient.me().authentication().methods()
	.buildRequest()
	.get();

```