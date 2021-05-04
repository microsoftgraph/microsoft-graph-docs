---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Permission permission = graphClient.me().drive().items("{item-id}").permissions("{perm-id}")
	.buildRequest()
	.get();

```