---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IOAuth2PermissionGrantDeltaCollectionPage delta = graphClient.oauth2PermissionGrants()
	.delta()
	.buildRequest()
	.get();

```