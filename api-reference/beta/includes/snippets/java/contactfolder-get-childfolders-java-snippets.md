---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ContactFolderCollectionPage childFolders = graphClient.me().contactFolders("{id}").childFolders()
	.buildRequest()
	.get();

```