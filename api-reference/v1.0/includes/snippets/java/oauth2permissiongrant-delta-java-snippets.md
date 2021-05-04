---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OAuth2PermissionGrantDeltaCollectionPage delta = graphClient.oauth2PermissionGrants()
	.delta()
	.buildRequest()
	.get();

```