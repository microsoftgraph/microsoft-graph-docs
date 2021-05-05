---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OAuth2PermissionGrantCollectionWithReferencesPage oauth2PermissionGrants = graphClient.users("7d54cb02-aaa3-4016-9f9c-a4b49422dd9b").oauth2PermissionGrants()
	.buildRequest()
	.get();

```