---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthorizationPolicy authorizationPolicy = new AuthorizationPolicy();
authorizationPolicy.allowedToUseSSPR = true;

graphClient.policies().authorizationPolicy("authorizationPolicy")
	.buildRequest()
	.patch(authorizationPolicy);

```