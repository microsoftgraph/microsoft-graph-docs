---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IOAuth2PermissionGrantCollectionPage oauth2PermissionGrants = graphClient.oauth2PermissionGrants()
	.buildRequest()
	.get();

```