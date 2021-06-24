---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ResourceSpecificPermissionGrantCollectionPage permissionGrants = graphClient.chats("19:089ac694c48647c68035aae675cf78ab@thread.v2").permissionGrants()
	.buildRequest()
	.get();

```