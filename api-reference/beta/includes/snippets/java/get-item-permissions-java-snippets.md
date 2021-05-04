---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PermissionCollectionPage permissions = graphClient.me().drive().items("{item-id}").permissions()
	.buildRequest()
	.get();

```