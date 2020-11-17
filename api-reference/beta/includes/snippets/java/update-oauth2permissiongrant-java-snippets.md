---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OAuth2PermissionGrant oAuth2PermissionGrant = new OAuth2PermissionGrant();
oAuth2PermissionGrant.scope = "scope-value";

graphClient.oauth2PermissionGrants("{id}")
	.buildRequest()
	.patch(oAuth2PermissionGrant);

```