---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthorizationPolicy authorizationPolicy = new AuthorizationPolicy();
authorizationPolicy.allowEmailVerifiedUsersToJoinOrganization = false;

graphClient.policies().authorizationPolicy()
	.buildRequest()
	.patch(authorizationPolicy);

```